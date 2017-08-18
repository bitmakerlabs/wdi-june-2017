document.addEventListener('DOMContentLoaded', function() {

  calculateRemainingTasks();

  // 1. Toggle tasks from complete to incomplete

  // var allTasks = document.querySelectorAll('.task');
  //
  // for (var i = 0; i < allTasks.length; i++) {
  //   allTasks[i].addEventListener('click', function() {
  //     // this === e.target
  //
  //     // if (this.className === 'task') {
  //     //   this.className = 'task is-complete';
  //     // } else {
  //     //   this.className = 'task';
  //     // }
  //
  //     this.classList.toggle('is-complete');
  //   });
  // }

  var taskList = document.querySelector('#tasks-list');

  taskList.addEventListener('click', function(e) {
    // NOTE: This didn't work when clicking directly on the anchor tag
    // if ( e.target.classList.contains('.task') ) {
    //   e.target.classList.toggle('is-complete');
    // }

    var closestTaskElement = e.target.closest('.task');

    if ( closestTaskElement ) {
      closestTaskElement.classList.toggle('is-complete');
      calculateRemainingTasks();
    }

  });


  // 3. Add new items to the list via form
  var newTodoForm = document.querySelector('#new-todo');

  newTodoForm.addEventListener('submit', function(e) {
    e.preventDefault();

    // 1. Grab the user input from the field
    var newTask = document.querySelector('#todo-task').value;

    // 2. Create a new <li>
    var taskElement = document.createElement('li');
    taskElement.className = 'task';

    // 3. Create a new <a>
    var taskAnchor = document.createElement('a');

    // 4. Put the input in the anchor tag
    taskAnchor.innerHTML = newTask;

    // 5. Put the anchor into the li
    taskElement.append(taskAnchor);

    // 6. Append the new li into the task list
    taskList.append(taskElement);

    // 7. Update the number of remaining tasks
    calculateRemainingTasks();

    // 8. Clear out the input element
    newTodoForm.reset();
  });

  // 4. Toggle todo items based on filters
  // 5. (optional) Ability to remove items from list
});

// 2. Update the number of tasks remaining
function calculateRemainingTasks() {
  // 1. Select the counter
  var counter = document.querySelector('#counter');

  // 2. Select all the tasks
  var allTasks = document.querySelectorAll('.task');

  // 3. Select all the tasks that are complete
  var completedTasks = document.querySelectorAll('.task.is-complete');

  // 4. Calculate the remaining tasks
  var remainingTasks = allTasks.length - completedTasks.length;

  // 5. Set the value of counter
  counter.innerHTML = remainingTasks;
}
