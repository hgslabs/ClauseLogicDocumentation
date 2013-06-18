jQuery ->
  $(".alert-message").alert()
  $(".collapse").collapse('hide')
  $(".dropdown-toggle").dropdown()
  $("button[name=tooltip]").tooltip()
  $("[title]").tooltip()
  prettyPrint()
  
  $("#version_select").bind "change", ->
    window.location.pathname = $(this).val()