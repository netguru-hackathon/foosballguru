$ ->
  $("#check_all").on "click", ->
    $(this).parents("form").find(":checkbox").prop "checked", @checked
