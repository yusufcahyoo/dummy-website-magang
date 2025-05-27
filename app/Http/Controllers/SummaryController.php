<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Auth;

class SummaryController extends Controller
{
    private function requestLoanSummary()
    {
        return Http::withHeaders([
            'x-api-key' => '682c2217-9640-8013-b99e-e8087ab0593c',
            'Authorization' => '••••••',
            'Cookie' => 'PHPSESSID=tv2qduk29eihtflg3ket8fv0if',
            'Content-Type' => 'application/x-www-form-urlencoded',
        ])
            ->asForm()
            ->post('http://localhost/SS/slims/api/v1/perpus-slims.php', [
                'p' => 'api/loan/summary'
            ]);
    }

    public function fetchLoanSummary()
    {
        $response = $this->requestLoanSummary();

        return response()->json([
            'status' => $response->status(),
            'data' => $response->json() ?? $response->body(),
        ]);
    }

    public function postSummary()
    {
        $response = $this->requestLoanSummary();

        if ($response->successful()) {
            $json = $response->json();
            $user = Auth::user();

            $filteredLoans = collect($json['data']['loans'])
                ->filter(fn($loan) => $loan['member_name'] === $user->name)
                ->values();

            return view('home', [
                'data' => $json,
                'user' => $user,
                'filteredLoans' => $filteredLoans,
            ]);
        }

        return response()->json(['error' => 'Gagal mengambil data'], 500);
    }

    public function postSummaryAll(Request $request)
    {
        $response = $this->requestLoanSummary();

        if ($response->successful()) {
            $json = $response->json();
            $user = Auth::user();

            // Kembalikan JSON response untuk AJAX (bisa juga view, tapi AJAX lebih fleksibel)
            return response()->json([
                'status' => 'success',
                'data' => $json['data'] ?? [],
                'user' => [
                    'name' => $user->name,
                    'email' => $user->email,
                ]
            ]);
        }

        return response()->json(['status' => 'error', 'message' => 'Gagal mengambil data'], 500);
    }
}
