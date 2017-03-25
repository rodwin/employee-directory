<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laravel\Scout\Searchable;

class Employee extends Model
{

    public function department(){

        return $this->belongsTo(Department::class);
    }
}
