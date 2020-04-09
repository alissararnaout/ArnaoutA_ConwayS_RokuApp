export default {
    props: ['liveuser'],

    template: `
    <div class="cards">
        <div class="card" @click="navToItems()">
            <div class="card-body">
            <img :src="'images/' + liveuser.avatar" class="rounded-circle img-fluid">
                <p>{{ liveuser.fname }}</p>
                <p>{{ liveuser.admin }}</p>
            </div>
        </div>

    </div>`,

    created: function(){
        if(this.liveuser.avatar === null || this.liveuser.avatar === "null"){
            this.liveuser.avatar = "temp_avatar";
        } 
    },

    methods: {
        navToItems(){
            //debugger;

            localStorage.setItem("cachedUser", JSON.stringify(this.liveuser));

            if(this.liveuser.admin == 1){
            // send this user to its home page, and pass the user object to the home page
            this.$router.push({ name: "item_menu", params: { currentuser: this.liveuser }})
            } else {
                this.$router.push({ name: "child_menu", params: { currentuser: this.liveuser }})
            }

        }
    }

}