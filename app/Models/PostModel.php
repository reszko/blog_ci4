<?php

namespace App\Models;

use CodeIgniter\Model;

class PostModel extends Model
{

    protected $table = 'posts';
    protected $allowedFields = [
        'title', 'slug', 'body'
    ];

    protected $validationRules = [
        'title' => [
            'label' => 'Título',
            'rules' => 'required'
        ],
        'slug' => [
            'label' => 'Slug',
            'rules' => 'required'
        ],
        'body' => [
            'label' => 'Post',
            'rules' => 'required'
        ]
    ];
}
