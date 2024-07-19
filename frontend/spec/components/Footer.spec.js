import { mount } from '@vue/test-utils'
import { describe, expect, it } from 'vitest'
import Footer from './../../components/Footer.vue'

const wrapper = mount(Footer)

describe('footer', () => {
  it('is a Vue instance', () => {
    expect(wrapper.vm).toBeTruthy()
  })
  it('has correct html', () => {
    expect(wrapper.html()).toContain('<footer><small>Built with <a href="https://picocss.com">Pico</a></small></footer>')
  })
})
