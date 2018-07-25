// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

document.addEventListener('DOMContentLoaded', function(){

    var form = document.querySelector('#new_todo');

    form.addEventListener('submit' , function(e){
        e.preventDefault();
        $.ajax({
            url: form.getAttribute('action'),
            method: form.getAttribute('method'),
            dataType: 'json',
            data: $(form).serialize()
        }).done(function(data){
            var content = document.querySelector('#todo_content');
            var list = document.querySelector("#taskList");

            content.value = '';
            // response html
            //$(list).append(data); // jquery
            //list.insertAdjacentHTML('beforeend' , data) // javascript

            //for Json response
            var item = document.createElement('li');
            item.innerHTML = data.content
            list.appendChild(item);
            console.log("Yay!! we got the data")
        })
        console.log('AJAX request has been made')
    })

});