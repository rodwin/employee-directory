<?php

namespace App\Http\Controllers;


use App\EmployeeView;
use Illuminate\Http\Request;

class HomeController extends Controller
{

    const PAGINATE_VALUE = 10;

    public function index()
    {
        $employees = EmployeeView::paginate(self::PAGINATE_VALUE);
        $employees->withPath('/api/employee/search');

        $departments = \App\Department::all();

        return view('welcome', compact('employees','departments'));
    }

    public function search(Request $request)
    {
        $q = $request->input('query');

        $department = (int) $request->input('d');

        if(!empty($q)){

            /*
             * Scout allows you to add simple "where" clauses to your search queries.
             * Currently, these clauses only support basic numeric equality checks, and are primarily useful for scoping search queries by a tenant ID.
             * Since a search index is not a relational database, more advanced "where" clauses are not currently supported:
             *
             * When is also not supported
             */

            if(!empty($department)){
                return EmployeeView::search($q)->where('department_id', $department)->paginate(self::PAGINATE_VALUE);
            }else{
                return EmployeeView::search($q)->paginate(self::PAGINATE_VALUE);
            }

        }else{

            return EmployeeView::when($department, function ($query) use ($department) {
                return $query->where('department_id', $department);
            })->paginate(self::PAGINATE_VALUE);

        }

    }
}
