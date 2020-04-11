export default {
    name: "TheVideoComponent",

    template: `
    <section id="movie">


    
    <span id="red1"></span>


        <div id="vidPlayer">
               
                    <div class="player">
                    <video id="vidMov" autoplay controls muted :src="'video/' + currentMediaDetails.movie_video" class="fs-video"></video>
                    </div>

                 <div class="movText">
                    <h4 id="movTitle">{{currentMediaDetails.movie_title}}</h4>
                    <span id="movYear">{{currentMediaDetails.movie_year}}</span>
                    <p id="movSum" v-html="currentMediaDetails.movie_summary">Storyline here</p>
                    
         
                 </div>
            
        </div>

       
        

        
        <div id="categories">
            <h2 id="browse1">Browse By:</h2>
                 <button type="button" id="genTop" @focus="handleFocus1">Genre</button>
            <h2 id="browse2">Browse By:</h2>
                 <button type="button" id="decTop" @focus="handleFocus2">Decade</button>

                 <ul class="movie-genres" id="genres" @focusout="handleFocusOut1">
                 <li>
                     <a href="adventure" @click.prevent="filterMedia('adventure')">Adventure</a>
                 </li>
             
                 <li>
                     <a href="action" @click.prevent="filterMedia('action')">Action</a>
                 </li>
             
                 <li>
                     <a href="mystery" @click.prevent="filterMedia('mystery')">Mystery</a>
                 </li>
             
                 <li>
                     <a href="family" @click.prevent="filterMedia('family')">Family</a>
                 </li>
             
                 <li>
                     <a href="scfi" @click.prevent="filterMedia('scfi')">SciFi</a>
                 </li>
             
                 <li>
                     <a href="thriller" @click.prevent="filterMedia('thriller')">Thriller</a>
                 </li>
             
                 <li>
                     <a href="musical" @click.prevent="filterMedia('musical')">Musical</a>
                 </li>
             
                 <li>
                     <a href="romance" @click.prevent="filterMedia('romance')">Romance</a>
                 </li>
             
                 <li>
                     <a href="drama" @click.prevent="filterMedia('drama')">Drama</a>
                 </li>
             
                 <li>
                     <a href="comedy" @click.prevent="filterMedia('comedy')">Comedy</a>
                 </li>
             
                 <li>
                     <a href="animation" @click.prevent="filterMedia('animation')">Animation</a>
                 </li>
             
                 <li>
                     <a href="family" @click.prevent="retrieveVideoContent">All</a>
                 </li>
             </ul>

    <ul class="decade-list" id="decades" @focusout="handleFocusOut2">
    <li>
        <a href="fifties" @click.prevent="filterDecade('Fifties')">50s</a>
    </li>

    <li>
        <a href="Sixties" @click.prevent="filterDecade('Sixties')">60s</a>
    </li>

    <li>
        <a href="Seventies" @click.prevent="filterDecade('Seventies')">70s</a>
    </li>

    <li>
        <a href="Eighties" @click.prevent="filterDecade('Eighties')">80s</a>
    </li>

    <li>
        <a href="Nineties" @click.prevent="filterDecade('Nineties')">90s</a>
    </li>

    <li>
        <a href="Nineties" @click.prevent="retrieveVideoContent">All</a>
    </li>
</ul>

    
    
 
</div>

<div id="movSelect">

                <div class="movList">
                    <img v-for="item in allRetrievedVideos" :src="'images/' + item.movie_image" alt="media thumb" @click="loadNewMovie(item)" class="media-thumb">
                </div>
          
        </div>
    <div id="footer">
        <h2 id="power">Powered by</h2> <img id="rokuimg" class="rokuLogo" src="images/roku.svg" alt="roku" width="50" height="50">
        <h2 id="copy"> © 2020 Roku FLASHBACK. All Rights Reserved.</h2>
    </div>
    </section>
    `,

    data: function () {
        return {
            currentMediaDetails: {},
            allRetrievedVideos: []
        }
    },

    created: function(){
        this.retrieveVideoContent();
    },

    methods: {

        handleFocus1() {
            let genres = document.getElementById('genres');
            genres.style.display = "block";
        },
        handleFocusOut1() {
            let genres = document.getElementById('genres');
            genres.style.display = "none";
        },

        handleFocus2() {
            let decades = document.getElementById('decades');
            decades.style.display = "block";
        },

        handleFocusOut2() {
            let decades = document.getElementById('decades');
            decades.style.display = "none";
        },



        filterMedia(filter){
            //debugger;

            let url = `./admin/index.php?media=movies&filter=${filter}`;

            fetch(url)
                .then(res => res.json())
                .then(data => {
                    this.allRetrievedVideos = data;
                    this.currentMediaDetails = data[0];
                })
        },

        filterDecade(dfilter){
            //debugger;

            let url = `./admin/decade.php?media=movies&dfilter=${dfilter}`;

            fetch(url)
                .then(res => res.json())
                .then(data => {
                    this.allRetrievedVideos = data;
                    this.currentMediaDetails = data[0];
                })
        },


        retrieveVideoContent() {
            // fetch all the video content here (don't care about filtering, genre etc at this point)
            //debugger;

            if (localStorage.getItem("cachedVideo")) {
                this.allRetrievedVideos = JSON.parse(localStorage.getItem("cachedVideo"));

                this.currentMediaDetails = this.allRetrievedVideos[0];

            } else {
                let url = `./admin/index.php?media=movies`;

                fetch(url)
                .then(res => res.json())
                .then(data => {
                    localStorage.setItem("cachedVideo", JSON.stringify(data));

                    this.allRetrievedVideos = data;
                    this.currentMediaDetails = data[0];
                })
    
                
            }

           
        },

        loadNewMovie(movie) {
            this.currentMediaDetails = movie;
        }
    }
}