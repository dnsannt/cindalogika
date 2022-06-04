<?php

namespace App\Controllers;

use App\Models\CategoryModel;


class Category extends BaseController
{
    protected $categoryModel;

    public function __construct()
    {
        $this->categoryModel = new CategoryModel();
    }

    public function index()
    {
        $data = [
            'title' => 'Category',
            'category' => $this->categoryModel->getCategory()
        ];

        return view('category/index', $data);
    }

    public function create()
    {
        // session
        $data = [
            'title' => 'Form Tambah Data Category',
            'validation' => \Config\Services::validation()

        ];

        return view('category/create', $data);
    }

    public function save()
    {
        // validasi input 
        if (!$this->validate([
            'title' => [
                'rules' => 'required|is_unique[content.title]',
                'errors' => [
                    'required' => '{field}  harus di isi.',
                    'is_unique' => '{field} title sudah terdaftar'
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Ukuran gambar terlalu besar',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]
        ])) {
            // $validation = \Config\Services::validation();
            // return redirect()->to('/Komik/create')->withInput()->with('validation', $validation);
            return redirect()->to('/Content/create')->withInput();
        }
        // ambil gambar
        $fileSampul = $this->request->getFile('sampul');
        // apakah tidak ada gambar yang diupload
        if ($fileSampul->getError() == 4) {
            $namaSampul = 'default.png';
        } else {
            // generate nama sampul random
            $namaSampul = $fileSampul->getRandomName();
            // pindahkan ke folder public/img
            $fileSampul->move('img', $namaSampul);
        }

        $slug = url_title($this->request->getVar('title'), '-', true);
        $this->contentModel->save([
            'title' => $this->request->getVar('title'),
            'content' => $this->request->getVar('content'),
            'slug' => $slug,
            'sampul' => $namaSampul,
            'category_id' => $this->request->getVar('category_id')
        ]);

        session()->setFlashdata('pesan', 'Data berhasil ditambahkan.');

        return redirect()->to('/content');
    }
}
