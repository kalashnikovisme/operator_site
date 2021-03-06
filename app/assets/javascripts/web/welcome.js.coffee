videoAdaptation = ->
  if $(document).width() < 450
    $('.portfolio').width('100%')
  if $(document).width() < 1025
    $('iframe').prop('width', "#{$('.portfolio').width() - 10}px") 
    $('iframe').prop('height', "200px")

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
  $('img.white').hide()
  $('.social a').hover ->
    $(this).children('img.white').hide()
    $(this).children('img.gray').show()
    return
  $('.social a').mouseover ->
    $(this).children('img.white').show()
    $(this).children('img.gray').hide()
    return
  setTimeout (->
    $('.portfolio').not('.showed_with_all').hide()
  ), 1000

  videoAdaptation()
  return
