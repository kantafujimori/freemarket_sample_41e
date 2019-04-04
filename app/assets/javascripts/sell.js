$(document).on('turbolinks:load', function() {
    $('#delivery_fee_owner').on("change",function() {
        var noselect = $('#delivery_fee_owner option:selected').val();
        if (noselect == 1 || noselect == 2){
            $('#shipping_method').removeClass('display-none');
            $('#shipping_method').addClass('display-block');
        }else{
            $('#shipping_method').removeClass('display-block');
            $('#shipping_method').addClass('display-none');
        }
        $.ajax({
            type: 'GET',
            url: '/sells/shipping_method',
            data: {
            delivery_fee_owner_id: $(this).val()
        }
    })
    .done (function (data) {
        $('.shipping-method').html(data);
        })
    });
});
