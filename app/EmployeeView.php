<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laravel\Scout\Searchable;

class EmployeeView extends Model
{
    use Searchable;

    protected $table = 'employee_view';
}
