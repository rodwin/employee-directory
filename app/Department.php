<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laravel\Scout\Searchable;

class Department extends Model
{
    public function employees(){

        return $this->belongsToMany(Employee::class);
    }
}
