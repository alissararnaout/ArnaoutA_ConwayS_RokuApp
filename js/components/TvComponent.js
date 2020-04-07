export default {
    props: ['livetv'],
    
    template: `
    <div>
    <img :src="'images/' + livetv.tv_image">
    <h2>{{ livetv.tv_title }}</h2>
    <p>{{ livetv.tv_summary}}</p>

    </div>
    `

}