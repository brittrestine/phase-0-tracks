$(document).ready(function() {
  $("p").hide();
  $("#bob-dylan").hide();

  $("#see-dylan").click(function() {
    $("#bob-dylan").fadeIn("slow");
  });

  $("#learn").click(function() {
    $("p").show();
  });
});
