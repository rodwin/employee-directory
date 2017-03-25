<?php

use Illuminate\Database\Seeder;

class EmployeeTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('employees')->truncate();

        $departments = App\Department::pluck('id');

        factory(App\Employee::class, 500)->create()->each(function($u) use ($departments) {

            $key = array_rand($departments->toArray());
            $value = $departments[$key];

            $u->departments()->attach($value);
        });
    }
}
