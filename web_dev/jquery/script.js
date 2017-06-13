$(document).ready(function() {

  $("#bob-dylan").hide();
  $("#see-dylan").click(function() {
    $("#bob-dylan").fadeIn("slow");
  });

  $("p").hide();
  $("#learn").click(function() {
    $("p").show();
  });

  $( "li.fav" ).hover(function() {
    $( this ).append( $( "<span> : WINNER (THIS IS MY FAVORITE ALBUM!!!) <3 </span>" ) );
  }, function() {
    $( this ).find( "span:last" ).remove()});

  $( "li.tied" ).hover(function() {
    $( this ).append( $( "<span> : SECOND PLACE (TIED WITH EVERY OTHER ALBUM EXCEPT DESIRE.....) </span>" ) );
  }, function() {
    $( this ).find( "span:last" ).remove()});

});
