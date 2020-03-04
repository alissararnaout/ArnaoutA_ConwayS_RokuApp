import MovieComponent from "./MovieComponent.js";

export default {
    template: ` 
    <div>
    <div id="mov_genres">
        <nav class="filterNav">
        <ul>
            <li><a href="index.php?filter=action">Action</a></li>
            <li><a href="index.php?filter=comedy">Comedy</a></li>
            <li><a href="index.php?filter=family">Family</a></li>
            <li><a href="index.php?filter=romance">Romance</a></li>
            <li><a href="index.php?filter=adventure">Adventure</a></li>
            <li><a href="index.php?filter=mystery">Mystery</a></li>
            <li><a href="index.php?filter=scfi">ScFi</a></li>
            <li><a href="index.php?filter=thriller">Thriller</a></li>
            <li><a href="index.php?filter=musical">Musical</a></li>
            <li><a href="index.php?filter=drama">Drama</a></li>
            <li><a href="index.php">All</a></li>
    </ul>
</nav>
</div>



   <div id="box">
   <MovieComponent v-for="movie in movieList" :livemovie="movie"></MovieComponent>
   </div>
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



