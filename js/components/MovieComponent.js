export default {
    props: ['livemovie'],
    
    template: `
    <div>
    <img :src="'images/' + livemovie.movie_image">
    <h2>{{ livemovie.movie_title }}</h2>
    <p>{{ livemovie.movie_summary}}</p>

    </div>
    `

}