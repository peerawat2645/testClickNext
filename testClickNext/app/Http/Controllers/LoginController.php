<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\user;
use App\Http\Controllers\AuthController;

class LoginController extends Controller
{
    function index(){
        return view('Login',['error'=>""]);
    }

    function indexError($error){
        return view('Login',['error'=>$error]);
    }

    function checkUser(Request $request){
        $value = $request->cookie('jwt');
        
        $object = (array)json_decode($value);
        $collection = User::hydrate($object);
        $collection = $collection->flatten(); 
        $user = User::find($collection[0]);
        if ($userID == 0) {
            return view('Login',['error'=>"404"]);
        }
        else{
            return redirect("/index/".$userID);
        }
 
    }
}
