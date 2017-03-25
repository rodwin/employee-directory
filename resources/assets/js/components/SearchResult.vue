<template>
    <div class="box">
        <article class="media">
            <div class="media-left">
                <figure class="image is-128x128">
                    <img :src="img" alt="Image">
                </figure>
            </div>
            <div class="media-content">
                <div class="content">
                    <p>
                        <strong>{{ name }}</strong>
                        <br>
                        <small>{{ emp.department_name }}</small>
                        <br>
                        <div v-html="emp.profile"></div>
                    </p>
                </div>
            </div>
        </article>
    </div>
</template>

<script>
    export default
    {
        props: ['emp'],

        computed :{
            name(){
                return this.emp.first_name + ' ' + this.emp.last_name
            },

            /*
            I only have 3 images so random between 1-3
             */
            img(){
                //declaring this to make this method reactive.
                //without this, img() will not reevaluate when emp obj change
                let id = this.emp.id

                let random = Math.floor(Math.random() * (4 - 1)) + 1

                return `/images/avatar-${random}.jpg`
            }
        },

    }
</script>