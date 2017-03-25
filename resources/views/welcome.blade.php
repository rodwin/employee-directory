<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Staff Directory</title>

    <link rel="stylesheet" type="text/css" href="{{ mix('/css/app.css') }}">

</head>
<body>
    <div id="app">
        <section class="hero is-primary">
            <div class="hero-body">
                <div class="container has-text-centered ">
                    <h1 class="title">
                        Staff Directory
                    </h1>
                </div>
            </div>
        </section>

        <section class="section">
            <search
                    :initial-data="{{ json_encode($employees) }}"
                    :departments="{{ json_encode($departments) }}">

            </search>
        </section>
    </div>
    <script>
        window.Laravel = <?php echo json_encode([
            'csrfToken' => csrf_token(),
        ]); ?>
    </script>
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/lodash/4.17.4/lodash.min.js"></script>
    <script src="{{ mix('/js/app.js') }}"></script>
</body>
</html>