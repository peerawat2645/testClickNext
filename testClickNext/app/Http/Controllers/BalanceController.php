<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\user;
use App\Models\balance;
use App\Models\transaction;

class BalanceController extends Controller
{
    function index($id){
        $user = User::find($id);
        $balanceID = Balance::where('userID',$id)->value('balanceID');
        $balance = Balance::find($balanceID);
        return view('Index',['user'=>$user],['balance'=>$balance]);
    }

    function create(){
        $balanceID = $_GET['balanceID'];
        $amount = $_GET['amount'];
        $status = $_GET['status'];
        $balance = Balance::find($balanceID);
        $user = User::find($balance->userID);
        $amountCurrent = $balance->amount;
        if($status == 'withdraw' and $balance->amount >= $amount)
            $balance->amount = $amountCurrent - $amount;
        else if($balance->amount < $amount){
            return redirect('/index/'.$user->userID);
        }
        else if($status == 'deposit')
            $balance->amount = $amountCurrent + $amount;
        $balance->save();
        $transaction = new transaction;
        $transaction->userID = $balance->userID;
        $transaction->status = $status;
        $transaction->amount = $amount;
        $transaction->save();

        
        return redirect('/index/'.$user->userID);

    }

    function summary($id){
        
    }
}
