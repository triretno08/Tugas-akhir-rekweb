<?php

namespace App\Http\Controllers;

use App\Models\Makul;
use Illuminate\Http\Request;

class MakulController extends Controller
{
    public function index()
    {
        return Makul::all();
    }

    public function show($nip)
    {
        return Makul::find($nip);
    }

    public function store(Request $request)
    {
        
        $Makul = new Makul();
        $Makul->kode_mk = $request->kode_mk;
        $Makul->nama_mk = $request->nama_mk;
        $Makul->jumlah_sks = $request->jumlah_sks;
        
        if($Makul->save()){
            return $Makul;
        }else{
            return response()->json(['error' => 'Gagal menyimpan data Makul'], 401);
        }
        

        
    }

    public function update(Request $request, $nip)
    {
        $Makul = Makul::findOrFail($nip);
        $Makul->nama_mk = $request->nama_mk;
        $Makul->jumlah_sks = $request->jumlah_sks;
        $Makul->save();

        return $Makul;
    }

    public function destroy($kode_mk)
    {
        $Makul = Makul::where('kode_mk',$kode_mk)->first();
        if($Makul){
            $Makul->delete();
            return response()->json(['message' => 'Sukses Hapus','status'=>200]);
        }else{
            return response()->json(['message' => 'Gagal Hapus','status'=>200]);
        }
    }
}
