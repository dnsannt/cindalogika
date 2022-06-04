<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index()
    {
        // untuk panggil array
        $data = [
            'title' => 'Home | WebProgramming',
            'tes' => ['satu', 'dua', 'tiga']
        ];
        return view('pages/home', $data);
    }

    public function about()
    {
        $data = [
            'title' => 'About Me'
        ];
        echo view('pages/about', $data);
    }

    public function contact()
    {
        $data = [
            'title' => 'Contact Us',
            'alamat' => [
                [
                    'tipe' => 'Rumah',
                    'alamat' => 'Jl. ABCDE',
                    'kota' => 'Kalianda'
                ],
                [
                    'tipe' => 'Kantor',
                    'alamat' => 'Jl. Stadion jati',
                    'kota' => 'Kalianda'
                ]
            ]
        ];
        return view('pages/contact', $data);
    }
}
