import { Application } from '@hotwired/stimulus'
import ScrollReveal from 'stimulus-scroll-reveal'

const applicationscroll = Application.start()
applicationscroll.register('scroll-reveal', ScrollReveal)

export { applicationscroll }
