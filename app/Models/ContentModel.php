<?php

namespace App\Models;

use CodeIgniter\Model;

class ContentModel extends Model
{
    protected $table = 'content';
    protected $useTimestamps = True;
    protected $allowedFields = ['title', 'content', 'slug', 'sampul', 'category_id'];

    public function getContent($slug = false)
    {
        if ($slug == false) {
            return $this->findAll();
        }

        return $this->where(['slug' => $slug])->first();
    }
}
