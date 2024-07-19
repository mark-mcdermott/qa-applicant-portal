<script setup>
const { signIn, status } = useAuth()
definePageMeta({ auth: false })
const email = ref('email')
const password = ref('password')

async function login() {
  await signIn({ user: { email: email.value, password: password.value } }, { redirect: false })
}
</script>

<template>
  <div class="w-4/6">
    <span class="tracking-tight font-light text-gray-500 text-4xl">

      <h4 class="text-7xl md:text-8 tracking-tight leading-none font-extrabold text-cyan-500 mt-1">
        Login
      </h4>

      <div class="w-full max-w-xs">
        <form class="pt-6 pb-8 mb-4">
          <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="email">
              Email
            </label>
            <input v-model="email" class="appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" type="text">
          </div>
          <div class="mb-6">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="password">
              Password
            </label>
            <input v-model="password" class="appearance-none border rounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline" type="password">
          </div>
          <div class="flex items-center justify-between">
            <button class="inline-block bg-cyan-500 hover:bg-cyan-600 mt-3 px-6 py-3 rounded-md text-white text-lg" type="button" @click.prevent="login">
              Submit
            </button>
          </div>
        </form>
      </div></span>
  </div>
</template>
