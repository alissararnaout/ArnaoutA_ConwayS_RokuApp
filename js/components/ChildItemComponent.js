export default {
    props: ['currentuser'],
    template: `
        <div class="container">
        <h1 id="hello">Hello, {{ currentuser.fname }}</h1>
        
            <div class="row">

                <div id="movieCat" class="cat">            
                <router-link to=/video>
                <img id="moviePic" src="images/movies.png" alt="movies" class="catPic">
                <h2 class="catTitle">Child</h2>
                </router-link>
                </div>

                <div id="musicCat" class="cat">  
                <router-link to=/music>
                <img id="musicPic" src="images/tunes.png" alt="Music" class="catPic">
                <h2 id="musicTitle" class="catTitle">Music</h2>
                </router-link>
                </div>

                <div id="tvCat" class="cat"> 
                <router-link to=/tv>
                <img id="tvPic" src="images/shows.png" alt="Tv" class="catPic">
                <h2 id="tvTitle" class="catTitle">TV</h2>
                </router-link>
                </div>

                </div>
  
        </div>
    `

}