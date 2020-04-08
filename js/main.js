
import AllUsersComponent from './components/AllUsersComponent.js';
import LoginComponent from './components/LoginComponent.js';
import UserHomeComponent from './components/UserHomeComponent.js';
import ItemComponent from "./components/ItemComponent.js"
import VideoComponent from "./components/VideoComponent.js"


(() => {
  let router = new VueRouter({
    // set routes
    routes: [
      { path: '/', redirect: { name: "login" } },
      { path: '/login', name: "login", component: LoginComponent },
      { path: '/users', name: 'users', component: AllUsersComponent },
      { path: '/item_menu', name: "item_menu", component: ItemComponent, props: true},
      { path: '/video', name: "video", component: VideoComponent },
      { path: '/userhome', name: 'home', component: UserHomeComponent, props: true }
    ]
  });

  const vm = new Vue({
    data: {
      authenticated: false,
      administrator: false,
      user: [],

      //currentUser: {},
    },

    methods: {
      setAuthenticated(status, data) {
        this.authenticated = status;
        this.user = data;
      },

      logout() {
        // push user back to login page
        this.$router.push({ name: "login" });
        this.authenticated = false;

        if (localStorage.getItem("cachedUser")){
          localStorage.removeItem("cachedUser");
        }
        if (localStorage.getItem("cachedVideo")){
          localStorage.removeItem("cachedVideo");
        }
      }
    },

    created: function () {
      // check for a user in localstorage
      // if we've logged in before, this should be here until we manually remove

      if (localStorage.getItem("cachedUser")) {
        let user = JSON.parse(localStorage.getItem("cachedUser"));

        this.authenticated = true;

        this.$router.push({ name: "item_menu", params: { currentuser: user } });
      } else {
        this.router.push({ name: "login" });
      }

    },

    router: router
  }).$mount("#app");

  router.beforeEach((to, from, next) => {
    //console.log('router guard fired!', to, from, vm.authenticated);

    if (vm.authenticated == false) {
      next("/login");
    } else {
      next();
    }
  });
})();