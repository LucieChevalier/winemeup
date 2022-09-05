// app/javascript/controllers/map_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    apiKey: String,
    marker: Array
  }

  connect() {
    // console.log(this.markerValue[0])
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"

    })
    this.#addMarkerToMap()
    this.#fitMapToMarker()
  }

  #addMarkerToMap() {
    const marker = this.markerValue[0]
    new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.map)

    // Initial code but we do not want to iterate on an array as we only have one marker
    // this.markerValue.forEach((marker) => {
    //   new mapboxgl.Marker()
    //     .setLngLat([ marker.lng, marker.lat ])
    //     .addTo(this.map)
    // })
  }

  #fitMapToMarker() {
    const bounds = new mapboxgl.LngLatBounds()
    const marker = this.markerValue[0]

    bounds.extend([ marker.lng, marker.lat ])
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

}
