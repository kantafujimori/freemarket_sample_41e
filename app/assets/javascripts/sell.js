$(document).on('turbolinks:load', function() {
  //カテゴリー
  $('#category-top').on('change',function () {
    var value = $('#category-top option:selected').val();
    console.log(value);
    if (value.length){
      $.ajax({
        url: '/sells/category_middle',
        type: "get",
        data: {
          parent_id: value
        }
      });
    }
  });
  $('#category-middle').on('change',function () {
    var top = $('#category-top option:selected').val();
    var value = $('#category-middle option:selected').val();
    $.ajax({
      url: '/sells/category_bottom',
      type: "get",
      data: {
        top_id: top,
        parent_id: value,
      }
    })
  });
  $('#category-bottom').on('change',function () {
    html = ``
  });
    //配送方法
    $('#delivery_fee_owner').on("change",function() {
        var noselect = $('#delivery_fee_owner option:selected').val();
        if (noselect == 1 || noselect == 2){
            $('#shipping_method').removeClass('display-none').addClass('display-block');
        }else{
            $('#shipping_method').removeClass('display-block').addClass('display-none');
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
    //価格表示
    $('#product_price').on('change',function () {
        var price = $('input[name="product[price]"]').val();
        var charge = price * 0.1;
        var SalesProfit = price - charge;
        if (price >= 300){
        $('#charge').text("").html(`¥${orgFloor(charge,1)}`);
        $('#profit').text("").html(`¥${orgCeil(SalesProfit,1)}`);
        }
        else{
          $('#charge , #profit').text('-');
        }
     //小数点処理
        function orgFloor(value,base) {
        return Math.floor(value * base) / base;
        }
        function orgCeil(value,base) {
        var inComma = Math.ceil(value * base) / base;
        return String(inComma).replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
        }
    });
    //クリックしてアップロード
    $('#file-upload').on('click',function () {
        $('#file').get(0).click();
    });
    //画像プレビュー
    $('#file').on('change',function () {
      if (!this.files.length) {
        alert("画像ファイルを指定してください。");
        return false;
      }
      var files = $(this).prop('files');
      var len = files.length;
      for ( var i = 0; i < len; i++ ) {
        var file = files[i];
        var reader = new FileReader();

      }
        reader.onload = function (e) {
            var imgsrc = e.target.result;
            var imgCount= $('.sell-upload__item').length;
            var dropbox = $('.sell-upload__drop-box');
            if (imgCount > 8){
              dropbox.remove();
            }
              dropbox.each(function () {
                var count = 1 + imgCount;
                var count2 = 4 - imgCount;
                var html = appendImage(imgsrc);
                if (imgCount <= 4) {
                  $(this).removeClass(function (index,className) {
                    var removeClassName = 'have-item';
                    reg = new RegExp("\\b" + removeClassName +"\\S+",'g');
                    return (className.match(reg) || []).join(' ');
                  });
                  $(this).addClass('have-item-' + count);
                  $('.sell-upload__items').children('ul').eq(0).append(html);
                }
                else if(imgCount >= 4) {
                  $(this).removeClass(function (index,className) {
                    var removeClassName = 'have-item';
                    reg = new RegExp("\\b" + removeClassName +"\\S+",'g');
                    return (className.match(reg) || []).join(' ');
                  });
                  $(this).addClass('have-item' + count2);
                  $('.sell-upload__items').children('ul').eq(1).append(html);
                }
                });
            //プレビュー表示
          function appendImage(file) {
            var html = `<li class="sell-upload__item">
                  <figure class="sell-upload__figure">
                  <img class="file1" src="${file}">
                  </figure>
                  <div class="sell-upload__button">
                  <a href="" class="sell-upload__edit">編集</a>
                  <a href="">削除</a>
                  </div>
                  </li>`;
            return html;
          }
        };
        reader.readAsDataURL(file);
    });
  });
