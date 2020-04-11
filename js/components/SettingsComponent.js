

export default {
    
    template: `
        <div class="Setcontainer">
      
            <h2 id="edProf">Child Settings</h2>
            
            <button type="button" id="genTop" @focus="handleFocus1">Movie Rating</button>

            <ul class="movie-genres" id="genres" @focusout="handleFocusOut1">
            <li>
                <a href="1" @click.prevent="filterMovRatings('1')">G</a>
            </li>
        
            <li>
                <a href="2" @click.prevent="filterMovRatings('2')">PG</a>
            </li>
        
            <li>
                <a href="3" @click.prevent="filterMovRatings('3')">PG-13</a>
            </li>
        
            <li>
                <a href="4" @click.prevent="filterMovRatings('4')">M</a>
            </li>
        
            <li>
                <a href="5" @click.prevent="filterMovRatings('5')">R</a>
            </li>
        
            <li>
                <a href="family" @click.prevent="retrieveVideoContent">All</a>
            </li>
        </ul>

        </div>
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

        handleFocus1() {
            let genres = document.getElementById('genres');
            genres.style.display = "block";
        },
        handleFocusOut1() {
            let genres = document.getElementById('genres');
            genres.style.display = "none";
        },

        handleFocus2() {
            let decades = document.getElementById('decades');
            decades.style.display = "block";
        },

        handleFocusOut2() {
            let decades = document.getElementById('decades');
            decades.style.display = "none";
        },



        filterMovRatings(mrfilter){
            //debugger;

            let url = `./admin/index.php?media=movies&mrfilter=${mrfilter}`;

            fetch(url)
                .then(res => res.json())
                .then(data => {
                    this.allRetrievedVideos = data;
                    this.currentMediaDetails = data[0];
                })
        }



}
}

