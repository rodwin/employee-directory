# Staff Directory Application

A Laravel/Vue.js project. [Live Demo Here] (http://128.199.222.214)

## Installation

Download this repo or 
``` bash
 git clone https://github.com/rodwin/employee-directory.git

```

Rename `.env.example` to `.env` and fill the database section.

Run the following commands
``` bash

# install php dependencies
composer install

#install node dependencies
npm install

# build for production with minification
npm run production

# migrate the database
php artisan migrate

# seed the database. This will seed 500 sample employee data
php artisan db:seed

```

The search functionality of this app uses Laravel Scout and Algolia. A trial key for this demo is included in this repo.

In order for the search to work with Algolia, Laravel Scout must first import the data
``` bash
 php artisan scout:import "App\EmployeeView"

```
This will create/update the index in Algolia. Note that if you run `php artisan scout:import` The demo application will no longer be in sync with Algolia. This is because `php artisan db:seed` uses `faker` which generate random data.

To run the app
``` bash
 php artisan serve

```
