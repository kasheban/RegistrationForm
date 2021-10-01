<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Accounts extends Model
{
    protected $fillable = ['name, email, password'];
    protected $table='accounts';
    protected $primaryKey ='id';
}
