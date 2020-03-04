import MovieComponent from "./MovieComponent.js";

export default {
    template: ` 
   <div id="box">
   <MovieComponent v-for="movie in movieList" :livemovie="movie"></MovieComponent>
   </div>
    `
,

data: function() {
    return {
        message: "Movies",
        movieList: []
    }
},

created: function() {
    // this will fire when the component gets built
    this.fetchAllMovies();
},

methods: {
    fetchAllMovies() {
        let url = `./includes/index.php?getMovies=true`;

        fetch(url)
        .then(res => res.json())
        .then(data => (this.movieList = data))
        .catch((err) => {console.error(err)})
    }
},

components: {
    MovieComponent: MovieComponent
}

}



