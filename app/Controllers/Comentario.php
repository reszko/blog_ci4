<?php

namespace App\Controllers;

use App\Models\ComentarioModel;
use App\Models\PostModel;

class Comentario extends BaseController
{

    public function store()
    {
        $post = $this->request->getPost();

        $comentarioModel = new ComentarioModel();
        $postModel = new PostModel();

        $dadosPost = $postModel->find($post['posts_id']);

        $dados = [
            'posts_id' => $post['posts_id'],
            'comentario' => $post['comentario']
        ];
        if ($comentarioModel->save($dados)) {
            return redirect()->to('/post/view/' . $dadosPost['id']);
        } else {
            echo view('post', [
                'comentarios' => $comentarioModel->where('posts_id', $post['posts_id'])->findAll(),
                'post' => $dadosPost,
                'errors' => $comentarioModel->errors()
            ]);
        }
    }
}
