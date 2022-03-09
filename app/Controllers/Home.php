<?php

namespace App\Controllers;

use App\Models\PostModel;

class Home extends BaseController
{
	public function index()
	{
		$postModel = new PostModel();

		$dados = [
			'posts' => $postModel->orderBy('id', 'desc')->findAll()
		];

		return view('posts', $dados);
	}

	//--------------------------------------------------------------------

}
