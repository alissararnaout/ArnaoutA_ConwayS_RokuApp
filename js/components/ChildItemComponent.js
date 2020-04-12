export default {
    props: ['currentuser'],
    template: `
        <div class="Ccontainer">
        
        <h1 id="hello1">Hello, {{ currentuser.fname }}</h1>
        
            <div class="row">

                <div id="movieCat" class="cat">            
                <router-link to=/child_video>
                <img id="moviePic" src="images/movies.png" alt="movies" class="catPic">
                <h2 class="catTitle1">Movies</h2>
                </router-link>
                </div>

                <div id="musicCat" class="cat">  
                <router-link to=/child_music>
                <img id="musicPic" src="images/tunes.png" alt="Music" class="catPic">
                <h2 id="musicTitle" class="catTitle1">Music</h2>
                </router-link>
                </div>

                <div id="tvCat" class="cat"> 
                <router-link to=/child_tv>
                <img id="tvPic" src="images/shows.png" alt="Tv" class="catPic">
                <h2 id="tvTitle" class="catTitle1">TV</h2>
                </router-link>
                </div>

                </div>
  
        </div>
    `

}