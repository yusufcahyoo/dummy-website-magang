<?php

namespace App\Http\Controllers;

use App\Models\Member;
use Illuminate\Http\Request;

class MemberController extends Controller
{
    // Menangani permintaan untuk mendapatkan semua anggota
    public function getAllMembers(Request $request)
    {
        // Ambil semua anggota (tanpa limitasi)
        $members = Member::all();

        // Mengembalikan semua anggota dalam format JSON
        return response()->json($members);
    }
}