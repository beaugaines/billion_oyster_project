# geocomplete addresses

jQuery ->
  $('input#geocomplete').geocomplete

    map: '.map_canvas'
    details: 'form'
    detailsAttribute: 'data-geo'

    $('#find').click ->
      $('#geocomplete').trigger 'geocode'

jQuery ->
  handler = Gmaps.build("Google")
  handler.buildMap
    provider: {}
    internal:
      id: "map"
  , ->
    markers = handler.addMarkers([
      lat: 0
      lng: 0
      picture:
        url: "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png"
        width: 36
        height: 36

      infowindow: "hello!"
    ])
    handler.bounds.extendWith markers
    handler.fitMapToBounds()
