$(document).ready ->
  $('#subscribe_completed').hide()
  $('#subscribe_not_completed').hide()
  $('#new_user').on("ajax:success", (e, data, status, xhr) ->
    $('#new_user :submit').prop('disabled', true)
    $('#user_name').prop('disabled', true)
    $('#user_email').prop('disabled', true)
    $('#user_city').prop('disabled', true)
    $('#subscribe_not_completed').hide()
    $('#subscribe_completed').fadeIn(500)
    return
  ).on "ajax:error", (e, xhr, status, error) ->
    $('#subscribe_not_completed').fadeIn(500)
    return
  return
