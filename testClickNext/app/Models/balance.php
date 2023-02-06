<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Balance extends Model
{
    public $table="balance";
    public $timestamps = false;
    protected $primaryKey = 'balanceID';
}
