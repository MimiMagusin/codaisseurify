//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .

function deleteArtist(ArtistId) {
  $.ajax({
    type: "DELETE",
    url: "/artists/" + artistId + ".json",
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    $('tr[data-id="'+artistId+'"]').remove();
    updateCounters();
  });
}
