export default {
    props: ['liveuser'],

    template: `
        <div class="col-sm-12">
        <router-link to=/item_menu>
            <p>{{ liveuser.uname }}</p>
            </router-link>
        </div>
    `
}