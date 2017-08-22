// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

document.addEventListener('DOMContentLoaded', function() {

  // Step 1: Listen to all click events on the robot container
  var robotContainer = document.getElementById('robot-container');
  robotContainer.addEventListener('click', function(event) {

    // Step 2: Prevent default behaviour of clicking on a link
    event.preventDefault();

    // Step 3: Figure out the destination URL
    var anchor = event.target.parentNode;
    var url = anchor.href;

    // Step 4: Make ajax request
    $.ajax({
      url: url,
      method: 'GET'
    }).done(function(data) {
      var robotDetails = document.querySelector('#robot-details');
      robotDetails.innerHTML = data;
    });
  })

});
