const development = process.env.NODE_ENV !== 'production'
export default defineNuxtConfig({
  devtools: { enabled: true },
  devServer: { port: 3001 },
  modules: ['@nuxtjs/tailwindcss', '@nuxt/icon', '@sidebase/nuxt-auth'],
  auth: {
    computed: { pathname: development ? 'http://localhost:3000/api/auth/' : 'https://interview-app-backend.fly.dev/api/auth/' },
    isEnabled: true,
    globalAppMiddleware: { isEnabled: true },
    provider: {
      type: 'local',
      pages: { login: '/' },
      token: { signInResponseTokenPointer: '/token' },
      endpoints: {
        signIn: { path: '/login', method: 'post' },
        signOut: { path: '/logout', method: 'delete' },
        signUp: { path: '/register', method: 'post' },
        getSession: { path: '/session', method: 'get' },
      },
    },
  },
})
