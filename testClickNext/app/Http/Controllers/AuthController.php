<?php

namespace App\Http\Controllers;

use App\Models\user;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;

class AuthController extends Controller
{
    public function login(Request $request){
    $credentials = [
        'username' => $request->input(key:'username'),
        'password' => $request->input(key:'password')
    ];
        $username = $request->input(key:'username');
        $password = $request->input(key:'password');
        if(Auth::attempt($credentials)){
            return response([
                'message' => 'Invalid credentials'
            ]);
        }

        $user = Auth::getProvider()->retrieveByCredentials($credentials);
        $token = $user->createToken('token')->plainTextToken;
        $response = new Response('Set Cookie');
        $response->withCookie(cookie('jwt', $user, 60*24));
      return redirect('api/user')->withCookie(cookie('jwt', $user, 60*24));
    }

    public function user(Request $request){
        $value = $request->cookie('jwt');
        
        $object = (array)json_decode($value);
        $userID = User::where('userID',$object["userID"])->value('userID');
        if ($userID == 0) {
            return view('Login',['error'=>"404"]);
        }
        else{
            return redirect("/index/".$userID);
        }
    }

    public function logout(Request $request){
        return redirect('')->withCookie(Cookie::forget('jwt'));
    }
}
