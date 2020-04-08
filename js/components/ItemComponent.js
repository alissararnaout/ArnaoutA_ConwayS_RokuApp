

export default {
    props: ['currentuser'],
    template: `
        <div class="container">
        <h1 id="hello">Hello, {{ currentuser.fname }}</h1>
        
            <div class="row">

                <router-link to=/video>
                <h2>Movies</h2>
                </router-link>

                <router-link to=/audio>
                <h2>Music</h2>
                </router-link>

                <router-link to=/tv>
                <h2>TV</h2>
                </router-link>
                </div>
  
        </div>
    `

}