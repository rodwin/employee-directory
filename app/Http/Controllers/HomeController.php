<?php

namespace App\Http\Controllers;


use App\EmployeeView;
use Illuminate\Http\Request;

class HomeController extends Controller
{

    const PAGINATE_VALUE = 10;

    /**
     * During initial load, provide initial data for faster rendering
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $employees = EmployeeView::paginate(self::PAGINATE_VALUE);

        /*
         * Provide path to fix the url of paginator in view
         */
        $employees->withPath('/api/employee/search');

        $departments = \App\Department::all();

        return view('welcome', compact('employees','departments'));
    }

    /**
     * Staff Search
     * When $request->q is present, search will be done against Algolia via Laravel Scout
     * When $request->q is not present, return the first 10 staff
     * When $request->d is present apply to refine result
     *
     * @param Request $request
     * @return Paginated Algolia search
     */
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
