// Global scope

document.addEventListener('DOMContentLoaded', function() {
  // Function scope

  var count = 0,
      colors = ['tomato', 'azure', 'green', 'orange', 'purple', 'chartreuse', 'yellow', 'chocolate'];

  var boxMaker = document.querySelector('#box-maker');

  boxMaker.addEventListener('click', function(e) {
      var x = Math.ceil(Math.random() * 400),
          y = Math.ceil(Math.random() * 200),
          c = Math.ceil(Math.random() * 8);

      var container = document.querySelector('#container');
      var newCircle = document.createElement('div');

      e.preventDefault();

      newCircle.className = 'circle';

      newCircle.style.top = y + 'px';
      newCircle.style.left = x + 'px';
      newCircle.style.backgroundColor = colors[c];

      newCircle.innerHTML = count++;

      container.append(newCircle);

      console.log('link was clicked');
  });
});
