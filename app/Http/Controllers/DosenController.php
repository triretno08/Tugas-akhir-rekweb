<?php

namespace App\Http\Controllers;

use App\Models\Dosen;
use Illuminate\Http\Request;

class DosenController extends Controller
{
    public function index()
    {
        return Dosen::all();
    }

    public function show($nip)
    {
        return Dosen::find($nip);
    }

    public function store(Request $request)
    {
        
        $dosen = new Dosen();
        $dosen->nip = $request->nip;
        $dosen->nama = $request->nama;
        $dosen->alamat = $request->alamat;
        $dosen->prodi = $request->prodi;
        $dosen->no_telp = $request->no_telp;
        
        if($dosen->save()){
            return $dosen;
        }else{
            return response()->json(['error' => 'Gagal menyimpan data dosen'], 401);
        }
        

        
    }

    public function update(Request $request, $nip)
    {
        $dosen = Dosen::findOrFail($nip);
        $dosen->nama = $request->nama;
        $dosen->alamat = $request->alamat;
        $dosen->prodi = $request->prodi;
        $dosen->no_telp = $request->no_telp;
        $dosen->save();

        return $dosen;
    }

    public function destroy($nip)
    {
        $dosen = Dosen::where('nip',$nip)->first();
        if($dosen){
            $dosen->delete();
            return response()->json(['message' => 'Sukses Hapus','status'=>200]);
        }else{
            return response()->json(['message' => 'Gagal Hapus','status'=>200]);
        }
    }
}
