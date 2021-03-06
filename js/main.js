
import AllUsersComponent from './components/AllUsersComponent.js';
import LoginComponent from './components/LoginComponent.js';
import ItemComponent from "./components/ItemComponent.js";
import VideoComponent from "./components/VideoComponent.js";
import ChildVideoComponent from "./components/ChildVideoComponent.js";
import ChildTvComponent from "./components/ChildTVComponent.js";
import ChildMusicComponent from "./components/ChildMusicComponent.js";
import TvComponent from "./components/TvComponent.js";
import AudioComponent from "./components/AudioComponent.js";
import ChildItemComponent from "./components/ChildItemComponent.js";






(() => {
  let router = new VueRouter({
    // set routes
    routes: [
      { path: '/', redirect: { name: "login" } },
      { path: '/login', name: "login", component: LoginComponent },
      { path: '/users', name: 'users', component: AllUsersComponent, props: true},
      { path: '/item_menu', name: "item_menu", component: ItemComponent, props: true},
      { path: '/child_menu', name: "child_menu", component: ChildItemComponent, props: true},
      { path: '/child_video', name: "child_video", component: ChildVideoComponent },
      { path: '/child_music', name: "child_music", component: ChildMusicComponent },
      { path: '/child_tv', name: "child_tv", component: ChildTvComponent },
      { path: '/video', name: "video", component: VideoComponent },
      { path: '/tv', name: "tv", component: TvComponent },
      { path: '/music', name: "music", component: AudioComponent },

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