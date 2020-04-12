

export default {
    props: ['currentuser'],
   
    template: `

        <div class="container">


        <div id="settings">
        <p id="x" @click="close">X</p2>

        <h2 id="edit">Edit Profiles</h2>

        <div id="parentProf">
        <img id="parImg" src="images/parent.png" alt="parent" width="150" height="150">
        <h2 id="label">Parent</h2>
        <h2 id="contFil">Content Filter</h2>
        <button type="button" id="agRate" @focus="handleFocus1">Age-Rating</button>
        <ul class="decade-list" id="ageRes" @focusout="handleFocusOut1">
        <li>
            <a href="">G</a>
        </li>
    
        <li>
            <a href="">PG</a>
        </li>
    
        <li>
            <a href="">PG-13</a>
        </li>
    
        <li>
            <a href="">M</a>
        </li>
    
        <li>
            <a hre="">R</a>
        </li>
    
        <li>
            <a href="">All</a>
        </li>
    </ul>
        </div>



        <div id="childProf">
        <img id="parImg" src="images/child.png" alt="parent" width="150" height="150">
        <h2 id="label">Child</h2>
        <h2 id="contFil">Content Filter</h2>
        <button type="button" id="agRate" @focus="handleFocus2">Age-Rating</button>
        <ul class="decade-list" id="cageRes" @focusout="handleFocusOut2">
        <li>
            <a href="">G</a>
        </li>
    
        <li>
            <a href="">PG</a>
        </li>
    
        <li>
            <a href="">PG-13</a>
        </li>
    
        <li>
            <a href="">M</a>
        </li>
    
        <li>
            <a hre="">R</a>
        </li>
    
        <li>
            <a href="">All</a>
        </li>
    </ul>
        </div>



        </div>


<div id="menu">

        <h1 id="hello">Hello, {{ currentuser.fname }}</h1>
        
            <div class="row">

        
                <div id="movieCat" class="cat">            
                <router-link to=/video>
                <img id="moviePic" src="images/movies.png" alt="movies" class="catPic">
                <h2 class="catTitle">Movies</h2>
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

                <button @click="navToSet()" id="profset">Profile Settings</button>
               </div>
        </div>
    `,

    methods:{
        navToSet(){
            let settings = document.getElementById('settings');
            settings.style.display = "block";
        },

        close(){
            let settings = document.getElementById('settings');
            settings.style.display = "none";
        },

        handleFocus1() {
            let age = document.getElementById('ageRes');
            age.style.display = "block";
        },
        handleFocusOut1() {
            let age2 = document.getElementById('ageRes');
            age2.style.display = "none";
        },

        handleFocus2() {
            let age2 = document.getElementById('cageRes');
            age2.style.display = "block";
        },
        handleFocusOut2() {
            let age2 = document.getElementById('cageRes');
            age2.style.display = "none";
        },

    }


}
