<template>
  <div class="w-4/6">
    <span class="tracking-tight font-light text-gray-500 text-4xl">
      <h4 class="text-7xl md:text-8 tracking-tight leading-none font-extrabold text-cyan-500 mt-1">
        Upload
      </h4>
      <p class="text-lg text-gray-500 mt-2">
        When you have completed the <NuxtLink to="/assignment">assigment</NuxtLink>, please zip your files into one zipfile and upload it here.
      </p>
      <form class="mt-4">
        <input id="file_input" class="block w-full text-lg text-gray-500 border border-gray-300 rounded-lg cursor-pointer bg-gray-50 dark:text-gray-400 focus:outline-none dark:bg-gray-700 dark:border-gray-600 dark:border-solid dark:placeholder-gray-400" type="file">
        <submit to="/login" class="inline-block bg-cyan-500 hover:bg-cyan-600 mt-3 px-6 py-3 rounded-md text-white text-lg">Submit</submit>
      </form>
    </span>
  </div>
</template>
