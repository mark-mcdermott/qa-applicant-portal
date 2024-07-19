import vue from '@vitejs/plugin-vue'
import { defineConfig } from 'vitest/config'

export default defineConfig({
  plugins: [vue({ template: { compilerOptions: { isCustomElement: tag => ['Icon', 'NuxtLink'].includes(tag) } } })],
  test: { environment: 'happy-dom', setupFiles: ['./specs/mocks/mocks.js'] },
})
