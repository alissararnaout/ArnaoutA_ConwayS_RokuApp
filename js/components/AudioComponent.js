export default{
    name: "TheAudioComponent",

    template: `


    <section id="music">
    <span id="red1"></span>
        <div id="audPlayer">
               
                    
                    <img :src="'images/' + currentMediaDetails.music_image" alt="media thumb" id="album" width="400" height="400">

                    <div class="movCopy">
                    <h4 id="movTitle">{{currentMediaDetails.music_title}}</h4>
                    <p id="movYear" v-html="currentMediaDetails.music_year">Storyline here</p>
                    <span id="movArtist">{{currentMediaDetails.music_artist}}</span>
                 </div>

           
                 <audio id="Audioplayer" controls muted :src="'audio/' + currentMediaDetails.music_audio"></audio>
                 
            
        </div>

        <div id="categories">
        <h2 id="browse1">Browse By:</h2>
             <button type="button" id="genTop" @focus="handleFocus1">Genre</button>

             <h2 id="browse2">Browse By:</h2>
             <button type="button" id="decTop" @focus="handleFocus2">Decade</button>

             <ul class="movie-genres" id="genres" @focusout="handleFocusOut1">
             <li>
                 <a href="Rock" @click.prevent="filterMusGenre('Rock')">Rock</a>
             </li>
         
             <li>
                 <a href="Pop" @click.prevent="filterMusGenre('Pop')">Pop</a>
             </li>
         
             <li>
                 <a href="Hip-Hop" @click.prevent="filterMusGenre('Hip-Hop')">Hip-Hop</a>
             </li>
         
             <li>
                 <a href="Vocal" @click.prevent="filterMusGenre('Vocal')">Vocal</a>
             </li>
         
             <li>
                 <a href="Vocal" @click.prevent="retrieveVideoContent">All</a>
             </li>
         </ul>


         <ul class="decade-list" id="decades" @focusout="handleFocusOut2">
         <li>
             <a href="fifties" @click.prevent="filterMusDecade('Fifties')">50s</a>
         </li>
     
         <li>
             <a href="Sixties" @click.prevent="filterMusDecade('Sixties')">60s</a>
         </li>
     
         <li>
             <a href="Seventies" @click.prevent="filterMusDecade('Seventies')">70s</a>
         </li>
     
         <li>
             <a href="Eighties" @click.prevent="filterMusDecade('Eighties')">80s</a>
         </li>
     
         <li>
             <a href="Nineties" @click.prevent="filterMusDecade('Nineties')">90s</a>
         </li>
     
         <li>
             <a href="Nineties" @click.prevent="retrieveVideoContent">All</a>
         </li>
     </ul>
            

        </div>
        

        <div id="movSelect">
                <div class="movList">
                    <img v-for="item in allRetrievedVideos" :src="'images/' + item.music_image" alt="media thumb" @click="loadNewMusic(item)" class="media-thumb" height="300" width="400">
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


    filterMusGenre(mfilter){
        //debugger;

        let url = `./admin/musGenre.php?media=music&mfilter=${mfilter}`;

        fetch(url)
            .then(res => res.json())
            .then(data => {
                this.allRetrievedVideos = data;
                this.currentMediaDetails = data[0];
            })
    },

    filterMusDecade(mdfilter){
        //debugger;

        let url = `./admin/musDecade.php?media=music&mdfilter=${mdfilter}`;

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
            let url = `./admin/index.php?media=music`;

            fetch(url)
            .then(res => res.json())
            .then(data => {
                localStorage.setItem("cachedVideo", JSON.stringify(data));

                this.allRetrievedVideos = data;
                this.currentMediaDetails = data[0];
            })

            
        }

       
    },

    loadNewMusic(music) {
        this.currentMediaDetails = music;
    }
}
}
