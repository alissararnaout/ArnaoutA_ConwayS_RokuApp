import TvComponent from "./TvComponent.js";

export default {
    template: ` 
    <div>
    <div id="tv_genres">
        <nav class="filterNav">
        <ul>
            <li><a href="index.php?filter=Comedy">Comedy</a></li>
            <li><a href="index.php?filter=Sitcom">Sitcom</a></li>
            <li><a href="index.php?filter=Action">Action</a></li>
            <li><a href="index.php?filter=Adventure">Mystery</a></li>
            <li><a href="index.php?filter=Mystery">Mystery</a></li>
            <li><a href="index.php?filter=Crime">Crime</a></li>
            <li><a href="index.php?filter=Fantasy">Fantasy</a></li>
            <li><a href="index.php?filter=Education">Education</a></li>
            <li><a href="index.php?filter=Animation">Animation</a></li>
            <li><a href="index.php?filter=Family">Family</a></li>
            <li><a href="index.php">All</a></li>
    </ul>
</nav>
</div>



   <div id="box">
   <TvComponent v-for="tv in tvList" :livetv="tv"></TvComponent>
   </div>
   </div>
    `
,

data: function() {
    return {
        message: "Tv",
        tvList: []
    }
},

created: function() {
    // this will fire when the component gets built
    this.fetchAllTv();
},

methods: {
    fetchAllTv() {
        let url = `./includes/index.php?getTv=true`;

        fetch(url)
        .then(res => res.json())
        .then(data => (this.tvList = data))
        .catch((err) => {console.error(err)})
    }
},

components: {
    TvComponent: TvComponent
}

}