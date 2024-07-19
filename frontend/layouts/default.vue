<template>
  <Header />
  <main class="flex flex-col xl:flex-row h-screen">
    <div class="w-full xl:w-1/2 my-4 h-screen flex items-center justify-center">
      <NuxtPage />
    </div>
    <div class="hidden xl:block w-full xl:w-1/2 h-screen">
      <img class="object-cover w-full h-screen" src="/img/digital.png" alt="Robot Group">
    </div>
  </main>
</template>
