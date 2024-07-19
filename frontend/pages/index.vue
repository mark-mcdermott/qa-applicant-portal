<script>
definePageMeta({ auth: false })
</script>

<template>
  <div class="w-4/6">
    <span class="tracking-tight font-light text-gray-500 text-4xl">
      <h3 class="text-base">Welcome</h3>
      <h4 class="text-7xl md:text-8 tracking-tight leading-none font-extrabold text-cyan-500 mt-1">
        QA Applicant
      </h4>
      <p class="text-lg text-gray-500 mt-2">
        Here you can read the assigment and upload your work.
      </p>
      <NuxtLink to="/login" class="inline-block bg-cyan-500 hover:bg-cyan-600 mt-3 px-6 py-3 rounded-md text-white text-lg">Log In</NuxtLink>
    </span>
  </div>
</template>
