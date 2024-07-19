<script setup>
const { data, signOut, status } = useAuth()

async function logout() {
  await signOut({ callbackUrl: '/' })
}
</script>

<template>
  <nav class="flex items-center justify-between flex-wrap bg-gray-800 p-6">
    <div class="flex items-center flex-shrink-0 text-white mr-6">
      <NuxtLink to="/">
        <span class="font-bold text-xl"><Icon name="fa-solid:laptop-code" mode="svg" /> QA Applicant Portal</span>
      </NuxtLink>
    </div>
    <div class="w-full block sm:flex sm:items-center sm:w-auto text-end">
      <div v-if="status === 'authenticated'" class="text-sm sm:flex-grow text-end mr-4">
        <NuxtLink to="/assignment" class="block mt-4 sm:inline-block sm:mt-0 text-white hover:text-cyan-500 mr-4">
          Assignment
        </NuxtLink>
        <NuxtLink to="/upload" class="block mt-4 sm:inline-block sm:mt-0 text-white hover:text-cyan-500 mr-4">
          Upload
        </nuxtlink>
      </div>
      <div class="text-sm sm:flex-grow text-end mr-4">
        <NuxtLink v-if="status === 'unauthenticated'" to="/login" class="inline-block text-sm px-4 py-2 leading-none border rounded text-white border-white hover:border-transparent hover:text-white hover:bg-cyan-500 mt-4 md:mt-0">
          Log In
        </NuxtLink>
        <button v-if="status === 'authenticated'" class="inline-block text-sm px-4 py-2 leading-none border rounded text-white border-white hover:border-transparent hover:text-white hover:bg-cyan-500 mt-4 md:mt-0" @click.prevent="logout">
          Log Out
        </button>
      </div>
    </div>
  </nav>
</template>

<style scoped>
span {
  display: flex;
  align-items: center;
    svg {
      display: inline-block;
      margin-right: 0.4em;
    }
}
</style>
