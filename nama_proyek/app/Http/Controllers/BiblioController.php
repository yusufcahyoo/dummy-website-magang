<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class BiblioController extends Controller
{

    private function requestBiblio()
    {
        return Http::withHeaders([
            'x-api-key' => '682c2217-9640-8013-b99e-e8087ab0593c',
            'Authorization' => '••••••',
            'Cookie' => 'PHPSESSID=tv2qduk29eihtflg3ket8fv0if',
            'Content-Type' => 'application/x-www-form-urlencoded',
        ])
            ->asForm()
            ->post('http://localhost/SS/slims/api/v1/perpus-slims.php', [
                'p' => 'api/biblio/popular'
            ]);
    }

    public function fetchBiblio()
    {
        $response = $this->requestBiblio();

        return response()->json([
            'status' => $response->status(),
            'data' => $response->json() ?? $response->body(),
        ]);
    }

    public function popular()
    {
        $response = $this->requestBiblio();

        if ($response->successful()) {
            // Asumsi response->json() adalah array biblio langsung
            return response()->json([
                'status' => true,
                'data' => $response->json(),
            ]);
        }

        return response()->json(
            ['status' => false, 'error' => 'Gagal mengambil data populer'],
            500
        );
    }


    private function requestBiblioAll()
    {
        return Http::withHeaders([
            'x-api-key' => '682c2217-9640-8013-b99e-e8087ab0593c',
            'Authorization' => '••••••', // Ganti jika diperlukan
            'Cookie' => 'PHPSESSID=a46484f7joj8n8kcioupd2enqc',
            'Content-Type' => 'application/x-www-form-urlencoded',
        ])
            ->asForm()
            ->post('http://localhost/SS/slims/api/v1/perpus-slims.php', [
                'p' => 'api/biblio/all',
            ]);
    }

    public function all()
    {
        $response = $this->requestBiblioAll();

        if ($response->successful()) {
            return response()->json([
                'status' => true,
                'data' => $response->json(),
            ]);
        }

        return response()->json([
            'status' => false,
            'error' => 'Gagal mengambil semua data koleksi',
        ], $response->status() ?: 500);
    }
}
