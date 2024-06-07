<?php

namespace App\Controllers;

class MyHome extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'ABCDE'
        ];
        echo view('Home/Index', $data);
    }
}
