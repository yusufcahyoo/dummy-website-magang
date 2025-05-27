<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Biblio extends Model
{
    protected $table = 'biblios';  // Nama tabel yang digunakan
    protected $fillable = ['biblio_id, image, title'];  // Kolom yang dapat diisi massal
    public $timestamps = true;  // Menggunakan timestamp otomatis (created_at, updated_at)
}
