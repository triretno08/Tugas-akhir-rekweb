<?php

namespace App\Http\Controllers;

use App\Models\Mahasiswa;
use Illuminate\Http\Request;

class MahasiswaController extends Controller
{
    public function index()
    {
        return Mahasiswa::all();
    }

    public function show($nim)
    {
        return Mahasiswa::find($nim);
    }

    public function store(Request $request)
    {
        
        $validatedData = $request->validate([
            'nim' => 'required|unique:mahasiswa',
            'nama' => 'required',
            'umur' => 'required|integer',
            'alamat' => 'required',
            'kota' => 'required',
            'kelas' => 'required',
            'jurusan' => 'required',
        ]);

        return Mahasiswa::create($validatedData);
    }

    public function update(Request $request, $nim)
    {
        
        $mahasiswa = Mahasiswa::findOrFail($nim);
        $mahasiswa->nim = $request->nim;
        $mahasiswa->nama = $request->nama;
        $mahasiswa->umur = $request->umur;
        $mahasiswa->alamat = $request->alamat;
        $mahasiswa->kota = $request->kota;
        $mahasiswa->kelas = $request->kelas;
        $mahasiswa->jurusan = $request->jurusan;
        $mahasiswa->save();

        return $mahasiswa;
    }

    public function destroy($nim)
    {
        $mahasiswa = Mahasiswa::where('nim',$nim)->first();
        $mahasiswa->delete();

        return response()->json(['message' => 'Sukses Hapus','status'=>200]);
    }
}
