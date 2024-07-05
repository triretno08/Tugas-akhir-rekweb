<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Dosen extends Model
{
    use HasFactory;

    protected $primaryKey = "nip";
    public $incrementing = false;
    protected $keyType = "string";
    public $fillable = ['nip', 'nama', 'alamat', 'prodi', 'no_telp'];
}
