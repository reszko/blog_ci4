<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ComentarioModel;
use App\Models\PostModel;

class Post extends BaseController
{

    public function index()
    {
        return view('post/home');
    }

    public function view($idPost)
    {

        $postModel = new PostModel();
        $post = $postModel->find($idPost);
        $comentarioModel = new ComentarioModel();

        $dados = [
            'comentarios' => $comentarioModel->where('posts_id', $idPost)->orderBy('created_at', 'desc')->findAll(),
            'post' => $post
        ];

        return view('post', $dados);
    }
    public function create()
    {
        $postModel = new PostModel();
        $dados = [
            'titulo' => 'Novo Post',
            'ultimosPosts' => $postModel->select('id, title')->findAll()
        ];
        return view('form', $dados);
    }

    public function store()
    {
        $postModel = new PostModel();
        $post = $this->request->getPost();
        if ($postModel->save($post)) {
            return redirect()->to('/post/sucesso');
        } else {
            echo view('form', [
                'titulo' => 'Novo Post',
                'errors' => $postModel->errors()
            ]);
        }
    }

    public function edit($idPost)
    {
        $postModel = new PostModel();

        $post = $postModel->find($idPost);
        $dados = [
            'titulo'    => 'Editar Post',
            'post' => $post
        ];
        return view('form', $dados);
    }

    public function excluir($idPost)
    {
        $postModel = new PostModel();
        if ($postModel->delete($idPost)) {
            return redirect()->to('/post/sucesso')->with('mensagem', 'Seu post foi excluído com sucesso.');
        }
    }

    public function sucesso()
    {
        return view('sucesso');
    }
}
