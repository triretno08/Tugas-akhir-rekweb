<?php

namespace App\Http\Livewire;

use Livewire\Component;

class Dosen extends Component
{
    public $nip, $nama, $alamat, $prodi, $no_telp, $updateDosen = false, $addDosen = false;

    public function render() // function ini yang dipanggil di blade dengan @livewire('mahasiswa')
    {
        $dosen = \App\Models\Dosen::latest()->get();
        return view('livewire.dosen',compact('dosen'));
    }

    protected $rules = [
        'nip' => 'required',
        'nama' => 'required',
        'alamat' => 'required',
        'prodi' => 'required',
    ];

    public function resetFields() {
        $this->nip = '';
        $this->nama = '';
    }

    public function create()

    {
        $this->resetFields();
        $this->addDosen = true;
        $this->updateDosen = false;
    }

    public function store()
    {
        $this->validate();
        try {
            \App\Models\Dosen::create([
                'nip' => $this->nim,
                'nama' => $this->nama,                
                'alamat' => $this->alamat,                
                'prodi' => $this->prodi,                
                'no_telp' => $this->no_telp,                
            ]);

            session()->flash('success', 'Data Dosen berhasil simpan!!');
            $this->resetFields();
            $this->addDosen = false;
            } catch (\Exception $ex) {
            session()->flash('error', 'Ada kesalahan dalam proses penyimpanan!! '.$ex);
        }
    }

    public function edit($nip)
    {
        // dd($nim);
        try {
            $dosen = \App\Models\Dosen::findOrFail($nip);
            if(!$dosen) {
                session()->flash('error', 'Dosen not found');
            } else {
                $this->nip = $dosen->nip;
                $this->nama = $dosen->nama;
                $this->alamat = $dosen->alamat;
                $this->prodi = $dosen->prodi;
                $this->no_telp = $dosen->no_telp;
                $this->updateMahasiswa = true;
                $this->addMahasiswa = false;
            }
        } catch (\Exception $ex) {
            session()->flash('error', 'Gagal menyimpan!!');           
            }
    }

    public function ups($nim="")
    {
        // $mahasiswa = \App\Models\Mahasiswa::findOrFail($nim);
        $this->updateDosen=true;
    }

    public function update()
    {
        $this->validate();
        try {
            // dd(\App\Models\Mahasiswa::find($this->nim));
            \App\Models\Dosen::find($this->nip)->update([
                // 'nim' => $this->nim,                
                'nip' => $this->nim,
                'nama' => $this->nama,                
                'alamat' => $this->alamat,                
                'prodi' => $this->prodi,                
                'no_telp' => $this->no_telp,     
                ]);
                
                session()->flash('success', 'Data Dosen berhasil di update!!');
                $this->resetFields();
                $this->updateDosen = false;

        } catch (\Exception $ex) {
            session()->flash('error', 'Ada kesalahan/gagal update!! '.$ex);
        }
    }

    public function cancel()
    {
        $this->addDosen = false;
        $this->updateDosen = false;
        $this->resetFields();
    }

    public function destroy($nip)
    {
        try {
            \App\Models\Dosen::find($nip)->delete();
            session()->flash('success', "Data Dosen berhasil dihapus!!");
        } catch (\Exception $e) {
            session()->flash('error', "Terdapat kesalahan/gagal menghapus!!");
        }
    }
}
