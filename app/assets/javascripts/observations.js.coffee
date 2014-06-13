# $ ->
#   $('.datepicker').datepicker()

$ ->
  $('.datepicker').each ->
    $(this).datepicker({
      dateFormat: 'yy-mm-dd',
      inline: true
    })

  $('.timepicker').timepicker()
