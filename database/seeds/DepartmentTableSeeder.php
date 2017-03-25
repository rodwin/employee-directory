<?php

use Illuminate\Database\Seeder;

class DepartmentTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('department_employee')->truncate();
        DB::table('departments')->truncate();

        $depts = [
            ['name' => 'Accounts', ],
            ['name' => 'Engineering', ],
            ['name' => 'Human Resources', ],
            ['name' => 'IT Support', ],
            ['name' => 'Legal', ],
            ['name' => 'Marketing', ],
            ['name' => 'Research', ],
            ['name' => 'Sales', ],
        ];

        // Loop through fruits above and create the record in DB
        foreach ($depts as $dept) {
            App\Department::create($dept);
        }
    }
}
