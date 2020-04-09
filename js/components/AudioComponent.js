export default{
    name: "TheAudioComponent",

    template: `
    <section>
        <div class="row">
            <div class="col-12 order-2 order-md-1 col-md-3 media-container">
                <h4 class="media-title">{{currentMediaDetails.music_title}}</h4>
                <p class="media-details" v-html="currentMediaDetails.music_artist">Storyline here</p>
                <span class="media-year">{{currentMediaDetails.music_year}}</span>
            </div>
            <img :src="'images/' + currentMediaDetails.music_image" alt="media thumb">
            <div class="col-12 order-1 order-md-2 col-md-9 media-container">
                <audio autoplay controls muted :src="'audio/' + currentMediaDetails.music_audio"></audio>
            </div>
        </div>

        <div class="row">
            <div class="col-12 col-sm-9">
                <div class="thumb-wrapper clearfix">
                    <img v-for="item in allRetrievedVideos" :src="'images/' + item.music_image" alt="media thumb" @click="loadNewMusic(item)" class="img-thumbnail rounded float-left media-thumb">
                </div>
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
