<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Makul extends Model
{
    use HasFactory;

    public $table = "matkuls";
    protected $primaryKey = "kode_mk";
    public $incrementing = false;
    protected $keyType = "string";
    public $fillable = ['kode_mk', 'nama_mk', 'jumlah_sks'];
}
