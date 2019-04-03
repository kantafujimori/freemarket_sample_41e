$(document).on 'change', '#delivery_fee_owner', ->
  $.ajax(
    type: 'GET'
    url: '/sells/shipping_method'
    data: {
      delivery_fee_owner_id: $(this).val()
    }
  ).done (data) ->
    console.log(data)
    $('.shipping-method').html(data)