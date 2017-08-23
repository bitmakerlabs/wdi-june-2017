document.addEventListener('DOMContentLoaded', function() {
  // Let's write some JS to make our form submit via JS

  // 1. Listen for the submit event on the form
  var newTodoForm = document.querySelector('#new_todo');

  newTodoForm.addEventListener('submit', function(eventObject) {
    eventObject.preventDefault();

    var todoElement = document.querySelector('#todo-task');
    var todoInput = todoElement.value;

    // 2. Submit the form via AJAX
    $.ajax({
      url: this.getAttribute('action'),
      method: this.getAttribute('method'),
      data: $(this).serialize(),
      dataType: 'json'
    }).done(function(data) {
      console.log(data);

      // 3. Update the todo list with the response
      // a. Create an li with class todo
      var li = document.createElement('li');
      li.className = 'todo';

      // b. Create an input element
      var inputElement = document.createElement('input');
      inputElement.setAttribute('type', 'checkbox');
      inputElement.setAttribute('value', data.id);
      inputElement.setAttribute('name', 'todos[]');
      inputElement.className = 'todo-complete';

      // c. Create a label element with the task field
      var labelElement = document.createElement('label');
      labelElement.innerHTML = data.task;

      li.append(inputElement);
      li.append(labelElement);

      // d. Add new li to the list
      var todosList = document.querySelector('#todos-list');
      todosList.append(li);

      newTodoForm.reset();
    });
  });

});
