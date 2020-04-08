export default {
    template: `
    <div class="container">
    <div class="jumbotron roku-jumbotron" id="loginBox">
        <h1 class="display-4">Welcome to <span id="fback">Flashback</span>.</h1>
        <p class="lead">
        Watch and listen to all your favourite
        oldies right here.</p>
        <hr class="my-4">

        <form @submit.prevent="login">
            <div class="form-row align-items-center">
                <div class="col-md-3 my-1">
                    <label class="sr-only" for="inlineFormInputName">Name</label>
                    <input class="unamef" v-model="input.username" type="text" class="form-control" id="inlineFormInputName" placeholder="username" required>
                </div>

                <div class="col-md-3 my-1">
                    <label class="sr-only" for="inlineFormPassword">Name</label>
                    <input v-model="input.password" type="password" class="form-control" id="inlineFormPassword" placeholder="password" required>
                </div>

                <div class="col-auto my-1">
                    <button type="submit" class="btn btn-primary">Go!</button>
                </div>
            </div>
        </form>            
    </div>
</div>
     `,

    data() {
        return {
            input: {
                username: "",
                password: ""
            },

        }
    },

    methods: {
        login() {

            if (this.input.username != "" && this.input.password != "") {
                // fetch the user from the DB
                // generate the form data
                let formData = new FormData();

                formData.append("username", this.input.username);
                formData.append("password", this.input.password);

                let url = `./admin/admin_login.php`;

                fetch(url, {
                    method: 'POST',
                    body: formData
                })
                    .then(res => res.json())
                    .then(data => {
                        if (typeof data != "object") { // means that we're not getting a user object back
                            console.warn(data);
                            // just for testing
                            alert("authentication failed, please try again");
                        } else {
                            this.$emit("authenticated", true, data);
                            this.$router.replace({ name: "users" });
                        }
                    })
                    .catch(function (error) {
                        console.log(error);
                    })
            } else {
                console.log("A username and password must be present");
            }
        }
    }
}