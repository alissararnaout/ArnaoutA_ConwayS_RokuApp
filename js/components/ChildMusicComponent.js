export default {
    name: "TheChildMusicComponent",

    template: `
    <section id="container">

<div id="childmovie">
        <div id="vidPlayer">
               
        <img :src="'images/' + currentMediaDetails.music_image" alt="media thumb" id="albumc" width="400" height="400">
        <h4 id="cmmovTitle">{{currentMediaDetails.music_title}}</h4>
        <audio id="cmAudioplayer" controls muted :src="'audio/' + currentMediaDetails.music_audio"></audio>
        

                
            
        </div>

       

<div id="cmovSelect">

                <div class="movList">
                    <img v-for="item in allRetrievedVideos" :src="'images/' + item.music_image" alt="media thumb" @click="loadNewMusic(item)" class="media-thumb">
                </div>
          
        </div>

<div id="redspan"></div>

    <div id="footer">
        <h2 id="power">Powered by</h2> <img id="rokuimg" class="rokuLogo" src="images/roku.svg" alt="roku" width="50" height="50">
        <h2 id="copy"> © 2020 Roku FLASHBACK. All Rights Reserved.</h2>
    </div>
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
                let url = `./admin/musGenreC.php?music=true`;

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