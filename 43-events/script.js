var clickBait = document.querySelector('#click-bait');

clickBait.addEventListener('click', function(eventObject) {
  eventObject.preventDefault();
  // When click-bait is clicked, do this!
  window.alert('#click-bait was clicked!');
});

var secondLevel = document.querySelector('#second-level');

function secondLevelEventHandler(e) {
  e.stopPropagation();
  window.alert('#second-level received a click event!');
}

secondLevel.addEventListener('click', secondLevelEventHandler);

var firstLevel = document.querySelector('#first-level');

var firstLevelEventHandler = function() {
  window.alert('#first-level received a click event!');
}

firstLevel.addEventListener('click', firstLevelEventHandler);
