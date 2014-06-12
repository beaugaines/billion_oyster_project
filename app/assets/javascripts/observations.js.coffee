# $ ->
#   $('.datepicker').datepicker()

$ ->
  $('.datepicker').each ->
    $(this).datepicker({
      dateFormat: 'yy-mm-dd'
    })

  $('.timepicker').timepicker()
