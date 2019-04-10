$(document).on('turbolinks:load', function() {
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
        $('#charge').text("").html(`¥${charge}`);
        $('#profit').text("").html(`¥${SalesProfit}`);
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
              dropbox.each(function (index) {
                var count = 1 + imgCount;
                var count2 = 4 - imgCount;
                if (imgCount <= 4) {
                  $(this).removeClass(function (index,className) {
                    var removeClassName = 'have-item';
                    reg = new RegExp("\\b" + removeClassName +"\\S+",'g');
                    return (className.match(reg) || []).join(' ');
                  });
                  $(this).addClass('have-item-' + count);
                  topImage(imgsrc);
                }
                else if(imgCount >= 4) {
                  console.log(index);
                  $(this).removeClass(function (index,className) {
                    var removeClassName = 'have-item';
                    reg = new RegExp("\\b" + removeClassName +"\\S+",'g');
                    return (className.match(reg) || []).join(' ');
                  });
                  $(this).addClass('have-item' + count2);
                  bottomImage(imgsrc);
                }
                });
        if (imgCount > 8){
            dropbox.remove();
          }
          function topImage(file) {
            var list = $('#list1');
            var html = `<li class="sell-upload__item">
                  <figure class="sell-upload__figure">
                  <img class="file1" src="${file}">
                  </figure>
                  <div class="sell-upload__button">
                  <a href="" class="sell-upload__edit">編集</a>
                  <a href="">削除</a>
                  </div>
                  </li>`;
            list.append(html);
          }
          function bottomImage(file){
            var list = $('#list2');
            var html = `<li class="sell-upload__item">
                  <figure class="sell-upload__figure">
                  <img class="file2" src="${file}">
                  </figure>
                  <div class="sell-upload__button">
                  <a href="" class="sell-upload__edit">編集</a>
                  <a href="">削除</a>
                  </div>
                  </li>`;
            list.append(html);
          }
        };
        reader.readAsDataURL(file);
      $(this).val('');
    });
  });
