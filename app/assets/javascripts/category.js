$(document).on('turbolinks:load', function() {
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
  })
});