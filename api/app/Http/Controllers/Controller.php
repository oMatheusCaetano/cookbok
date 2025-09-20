<?php

namespace App\Http\Controllers;

abstract class Controller
{
    public function welcome()
    {
        return "Welcome to the base controller!";
    }
}
