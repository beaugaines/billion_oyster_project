# geocomplete addresses

jQuery ->
  $('input#geocomplete').geocomplete

    map: '.map_canvas'
    details: 'form'
    detailsAttribute: 'data-geo'

    $('#find').click ->
      $('#geocomplete').trigger 'geocode'
