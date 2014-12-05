$ ->
  $("#check_all").on "click", ->
    $(this).parent("form").find(":checkbox").prop "checked", @checked
