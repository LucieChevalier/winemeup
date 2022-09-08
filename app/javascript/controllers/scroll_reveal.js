import { Application } from '@hotwired/stimulus'
import ScrollReveal from 'stimulus-scroll-reveal'

const application = Application.start()
application.register('scroll-reveal', ScrollReveal)
