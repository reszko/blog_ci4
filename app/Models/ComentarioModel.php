<?php

namespace App\Models;

use CodeIgniter\Model;

class ComentarioModel extends Model
{

    protected $table = 'comentarios';
    protected $allowedFields = [
        'id',
        'posts_id',
        'comentario'
    ];

    protected $validationRules = [
        'posts_id' => [
            'label' => 'Id do Post',
            'rules' => 'required'
        ],
        'comentario' => [
            'label' => 'Comentário',
            'rules' => 'required'
        ]
    ];
}
