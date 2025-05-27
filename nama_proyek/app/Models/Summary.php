<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Summary extends Model
{
    protected $table = 'loan_history';  // Nama tabel yang digunakan
    protected $fillable = ['total'];  // Kolom yang dapat diisi massal
    public $timestamps = true;  // Menggunakan timestamp otomatis (created_at, updated_at)
}
