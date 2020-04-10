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