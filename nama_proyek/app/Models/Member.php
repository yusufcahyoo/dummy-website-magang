<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    protected $table = 'users';

    protected $fillable = ['name', 'email']; // ✅ pastikan sesuai struktur tabel

    public $timestamps = true;
}