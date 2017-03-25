<template>
    <div class="container content">
        <div class="columns">
            <div class="column is-three-quarters">
                <div class="field has-addons">
                    <p class="control is-expanded has-icon has-icon-right">
                        <input class="input is-large"
                               v-model="query"
                               v-on:search="searchEmployee"
                               type="search"
                               placeholder="Keywords">

                        <span class="icon is-large">
                                      <i class="fa fa-search"></i>
                                    </span>
                    </p>
                </div>
            </div>
            <div class="column is-one-quarter">
                <p class="control">
                    <span class="select is-large is-fullwidth">
                      <select v-model="department_id" v-on:change="searchEmployee">
                        <option value="" selected>All Departments</option>
                        <option v-for="option in departments" v-bind:value="option.id">
                                    {{ option.name }}
                        </option>
                      </select>
                    </span>
                </p>
            </div>
        </div>

        <search-result
            v-for="emp in result.data" :emp="emp">
        </search-result>
        <div class="notification is-warning" v-show="result.total==0">
            Sorry, no results were found.
          </div>

        <nav class="pagination is-centered">
            <a class="pagination-previous" v-on:click="previous" v-bind:class="{'is-disabled' : result.prev_page_url === null}">Previous</a>
            <ul class="pagination-list">
                <span class="tag is-primary is-medium">{{result.total}} Records found</span>
            </ul>
            <a class="pagination-next" v-on:click="next" v-bind:class="{'is-disabled' : result.next_page_url === null}">Next page</a>
        </nav>
    </div>
</template>

<script>

    import SearchResult from './SearchResult.vue'

    export default {

        props :['initialData','departments'],

        data() {
            return {
                searchResult:[],

                result: this.initialData,

                query:"",

                department_id: "",
            }
        },

        watch:{
            'query': function () {
                this.searchEmployee()
            }
        },

        components :{
            SearchResult
        },

        methods: {
            searchEmployee: _.debounce(function () {
                let self = this
                axios.get(`/employee/search?query=${this.query}&d=${this.department_id}`)
                    .then(function (response) {
                        self.result = response.data;
                    })
                    .catch(function (error) {
                        console.log(error);
                    });
            }, 300),

            next(){
                let self = this
                axios.get(this.result.next_page_url + '&d=' +this.department_id)
                    .then(function (response) {
                        self.result = response.data;
                    })
                    .catch(function (error) {
                        console.log(error);
                    });
            },

            previous(){
                let self = this
                axios.get(this.result.prev_page_url + '&d=' +this.department_id)
                    .then(function (response) {
                        self.result = response.data;
                    })
                    .catch(function (error) {
                        console.log(error);
                    });
            }

        },

    }
</script>
