<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmployeesView extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::statement( "CREATE VIEW `employee_view` AS
            SELECT                                                                                                                                                                                
                  `a`.`id` AS `id`,                                                                                                                                                                 
                  `a`.`first_name` AS `first_name`,                                                                                                                                                 
                  `a`.`last_name` AS `last_name`,                                                                                                                                                   
                  `a`.`profile` AS `profile`,                                                                                                                                                       
                  `d`.`name` AS `department_name`,                                                                                                                                                  
                  `d`.`id` AS `department_id`                                                                                                                                                       
              FROM                                                                                                                                                                                  
                  `employees` `a`                                                                                                                                                                 
                  JOIN `department_employee` `de` ON `de`.`employee_id` = `a`.`id`                                                                                                            
                  JOIN `departments` `d` ON `d`.`id` = `de`.`department_id`;
             ");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::statement("DROP VIEW employee_view");
    }
}
