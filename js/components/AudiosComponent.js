import AudioComponent from "./AudioComponent.js";

export default {
    template: ` 
    <div>
    <div id="audio_genres">
        <nav class="filterNav">
        <ul>
            <li><a href="index.php?filter=Rock">Rock</a></li>
            <li><a href="index.php?filter=Pop">Pop</a></li>
            <li><a href="index.php?filter=Hip-Hop">Hip-Hop</a></li>
            <li><a href="index.php?filter=Vocal">Vocal</a></li>
            <li><a href="index.php">All</a></li>
    </ul>
</nav>
</div>



   <div id="box">
   <AudioComponent v-for="audio in audioList" :liveaudio="audio"></AudioComponent>
   </div>
   </div>
    `
,

data: function() {
    return {
        message: "Audio",
        audioList: []
    }
},

created: function() {
    // this will fire when the component gets built
    this.fetchAllAudio();
},

methods: {
    fetchAllAudio() {
        let url = `./includes/index.php?getAudio=true`;

        fetch(url)
        .then(res => res.json())
        .then(data => (this.audioList = data))
        .catch((err) => {console.error(err)})
    }
},

components: {
    AudioComponent: AudioComponent
}

}