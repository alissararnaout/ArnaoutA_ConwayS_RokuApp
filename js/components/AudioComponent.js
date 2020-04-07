export default {
    props: ['liveaudio'],
    
    template: `
    <div>
    <img :src="'images/' + liveaudio.music_image">
    <h2>{{ liveaudio.music_title }}</h2>
    <p>{{ liveaudio.music_artist}}</p>

    </div>
    `

}