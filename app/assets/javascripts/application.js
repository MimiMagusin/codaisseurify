// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.

//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .

// application.js


function submitSong(event) {
  event.preventDefault();
  resetErrors();

  function createSong(title) {
    var newSong = { title: title};

    var pathname = window.location.pathname;

    $.ajax({
       type: "POST",
       url: "/api" + pathname + "/songs",
       data: JSON.stringify({
         song: newSong
    }),
       contentType: "application/json",
       dataType: "json"
    })

    .done(function(data) {
       console.log(data);

    var listItem = $('<li></li>');
    listItem.addClass("song");

    var label = $('<label></label>');

    label.html(title);
    listItem.append(label);

    $("#songlist").append( listItem );

    })
    location.reload();
  }

  function showError(message) {
    var errorHelpBlock = $('<span class="help-block"></span>')
      .attr('id', 'error_message')
      .text(message);

    $("#formgroup-title")
      .addClass("has-error")
      .append(errorHelpBlock);
  }

  function resetErrors() {
    $("#error_message").remove();
    $("#formgroup-title").removeClass("has-error");
  }


  function nextSongId() {
    return $(".song").length + 1;
  }
    // stop the form from doing the default action, submitting...
    event.preventDefault();

    var title = $("#new-song").val();

    createSong(title);

    $("#new-song").val(null);
}


function cleanUpDoneSongs(event) {
  event.preventDefault();
  $.when($(".song").remove())
}

function deleteSong(songId) {
  $.ajax({
    type: "DELETE",
    url: "/songs/" + songId + ".json",
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    $('tr[data-id="'+songId+'"]').remove();
  });
}

$(document).ready(function() {
   $("form").bind('submit', submitSong);
   $("#clean-up").bind('click', cleanUpDoneSongs);
 });
