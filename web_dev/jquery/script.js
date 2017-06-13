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
    $( this ).append( $( "<span> : MY FAVORITE ALBUM!!! <3 </span>" ) );
  }, function() {
    $( this ).find( "span:last" ).remove()});

  $( "li.tied" ).hover(function() {
    $( this ).append( $( "<span> : MY SECOND FAVORITE ALBUM..... </span>" ) );
  }, function() {
    $( this ).find( "span:last" ).remove()});

});
