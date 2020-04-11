export default {
    name: "TheChildTVComponent",

    template: `


    <section id="tv">
    <span id="red1"></span>
        <div id="vidPlayer">
               
                    <div class="player">
                    <video id="vidMov" autoplay controls muted :src="'tv/' + currentMediaDetails.tv_video" class="fs-video"></video>
                    </div>

                 <div class="movText">
                    <h4 id="movTitle">{{currentMediaDetails.tv_title}}</h4>
                    <span id="movYear">{{currentMediaDetails.tv_year}}</span>
                    <p id="movSum" v-html="currentMediaDetails.tv_summary">Storyline here</p>
                    
         
                 </div>
            
        </div>
        

        
        <div id="categories">
        <h2 id="browse1">Browse By:</h2>
             <button type="button" id="genTop" @focus="handleFocus1">Genre</button>

        <h2 id="browse2">Browse By:</h2>
        <button type="button" id="decTop" @focus="handleFocus2">Decade</button>

             <ul class="movie-genres" id="genres" @focusout="handleFocusOut1">
             <li>
                 <a href="Comedy" @click.prevent="filterTvGenre('Comedy')">Comedy</a>
             </li>
         
             <li>
                 <a href="Sitcom" @click.prevent="filterTvGenre('Sitcom')">Sitcom</a>
             </li>
         
             <li>
                 <a href="Action" @click.prevent="filterTvGenre('Action')">Action</a>
             </li>
         
             <li>
                 <a href="Adventure" @click.prevent="filterTvGenre('Adventure')">Adventure</a>
             </li>
         
             <li>
                 <a href="Mystery" @click.prevent="filterTvGenre('Mystery')">Mystery</a>
             </li>
         
             <li>
                 <a href="Crime" @click.prevent="filterTvGenre('Crime')">Crime</a>
             </li>
         
             <li>
                 <a href="Fantasy" @click.prevent="filterTvGenre('Fantasy')">Fantasy</a>
             </li>
         
             <li>
                 <a href="Education" @click.prevent="filterTvGenre('Education')">Education</a>
             </li>
         
             <li>
                 <a href="Animation" @click.prevent="filterTvGenre('Animation')">Animation</a>
             </li>
         
             <li>
                 <a href="Family" @click.prevent="filterTvGenre('Family')">Family</a>
             </li>
         
             <li>
                 <a href="family" @click.prevent="retrieveVideoContent">All</a>
             </li>
         </ul>

         <ul class="decade-list" id="decades" @focusout="handleFocusOut2">
         <li>
             <a href="fifties" @click.prevent="filterTvDecade('Fifties')">50s</a>
         </li>
     
         <li>
             <a href="Sixties" @click.prevent="filterTvDecade('Sixties')">60s</a>
         </li>
     
         <li>
             <a href="Seventies" @click.prevent="filterTvDecade('Seventies')">70s</a>
         </li>
     
         <li>
             <a href="Eighties" @click.prevent="filterTvDecade('Eighties')">80s</a>
         </li>
     
         <li>
             <a href="Nineties" @click.prevent="filterTvDecade('Nineties')">90s</a>
         </li>
     
         <li>
             <a href="Nineties" @click.prevent="retrieveVideoContent">All</a>
         </li>
     </ul>
    

         </div>
         <div id="movSelect">
                <div class="movList">
                    <img v-for="item in allRetrievedVideos" :src="'images/' + item.tv_image" alt="media thumb" @click="loadNewTv(item)" class="media-thumb">
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

        filterTvGenre(tfilter){
            //debugger;

            let url = `./admin/tvGenreC.php?tv=true&tfilter=${tfilter}`;

            fetch(url)
                .then(res => res.json())
                .then(data => {
                    this.allRetrievedVideos = data;
                    this.currentMediaDetails = data[0];
                })
        },

        filterTvDecade(tdfilter){
            //debugger;

            let url = `./admin/tvDecadeC.php?tv=true&tdfilter=${tdfilter}`;

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
                let url = `./admin/tvGenreC.php?tv=true`;

                fetch(url)
                .then(res => res.json())
                .then(data => {
                    localStorage.setItem("cachedVideo", JSON.stringify(data));

                    this.allRetrievedVideos = data;
                    this.currentMediaDetails = data[0];
                })
    
                
            }

           
        },

        loadNewTv(tv) {
            this.currentMediaDetails = tv;
        }
    }
}