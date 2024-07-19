<template>
  <div class="w-4/6">
    <span class="tracking-tight font-light text-gray-500 text-4xl">
      <h4 class="text-7xl md:text-8 tracking-tight leading-none font-extrabold text-cyan-500 mt-1">
        Assignment
      </h4>
      <p class="text-lg text-gray-500 mt-2">
        The code assignment is to setup cypress/playwright tests for this website <a class="underline" target="_blank" href="https://automation-assignment-app.fly.dev">https://automation-assignment-app.fly.dev</a>. There are three pages on the site - Home, Public and Private. Write tests that:
        <ul class="text-lg text-gray-500 mt-2 ml-8 list-disc">
          <li>Test that all three pages are loading correctly.</li>
          <li>Test that the text on the three pages is loading correctly.</li>
          <li>Test that the login functionality is working correctly (the email is "email" and the password is "password")</li>
          <li>Test that the API is returning the correct data:
            <ul class="text-lg text-gray-500 mt-2 ml-8 list-disc">
              <li>A POST to https://automation-assignment-app-backend.fly.dev/api/auth/login with JSON payload of { "user": { "email": "email", "password": "password" }} returns a long token</li>
              <li>A POST to https://automation-assignment-app-backend.fly.dev/api/auth/session with the token in the header will return the user object</li>
            </ul>
          </li>

        </ul>
      </p>
    </span>
  </div>
</template>
