$(document).on 'change', '#delivery_fee_owner', ->
  $('#shipping-method_wrap').css('display','block')
  $.ajax(
    type: 'GET'
    url: '/sells/shipping_method'
    data: {
      delivery_fee_owner_id: $(this).val()
    }
  ).done (data) ->
    $('.shipping-method').html(data)