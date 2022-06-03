// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
$(function() {
  $("#pitcher_box_scores_list th a").live("click", function() {
    $.getScript(this.href);
    return false;
  });
  $("#pitcher_box_scores_table_search input").keyup(function() {
    $.get($("#pitcher_box_scores_search").attr("action"), $("#pitcher_box_scores_search").serialize(), null, "script");
    return false;
  });
});