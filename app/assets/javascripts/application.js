//= require jquery
//= require jquery_ujs
//= require foundation
//= require highcharts
//= require_tree .

$(function () {
  $(document).foundation();
});

$(function() {
  $(".sort_paginate_ajax th a, .sort_paginate_ajax .pagination a").on("click", function(){
    $.getScript(this.href);
    return false;
  });
});
