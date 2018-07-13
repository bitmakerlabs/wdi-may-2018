document.addEventListener('DOMContentLoaded', function(){
  var pageTitle = document.querySelector('#page-title');

  pageTitle.innerHTML = "Change in the file";


  // Making a TODO List

  // 1. Get a reference to the list
  var list = document.querySelector('#todo');

  // 2. Get a reference to the form
  var newTodoForm = document.querySelector('#new-todo-form');

  // 3. SNEAK PEEK: Listen for the 'submit' event on the form
  newTodoForm.addEventListener('submit', function(event) {
    // 4. When the form is submitted, do the rest of this

    // 5. Stop the browser from sending a request
    event.preventDefault();

    // 6. Get a reference to the todo input field
    var newTodoInput = newTodoForm.querySelector('#new-todo');

    // 7. Get the user-added text in the todo input field
    var newTodoText = newTodoInput.value;

    // 8. Create a new list item and populate it
    var newListItem = document.createElement('li');
    newListItem.className = 'item';
    newListItem.innerHTML = newTodoText;

    // 9. Add new list item to the list
    list.append(newListItem);

    // 10. Clear out the input element
    newTodoInput.value = '';
  });
});
