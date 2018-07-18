// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

document.addEventListener('DOMContentLoaded', function() {

console.log("Starting robots js")


//Select All links
// var roboLinks = document.querySelectorAll('')
var roboContainer = document.getElementById('robot-container')
var roboDetails = document.getElementById('robot-details-container')



// Add Event to links
// for (var i = 0; i < roboLinks.length; i++) {

// 		roboLinks[i].addEventListener('click',function(e){

// 			// Stop a from going to another page
// 			e.preventDefault();

// 			// get the link
// 			console.log(this.href)

// 		})



// }

roboContainer.addEventListener('click', function(e){
	//Stop a from going to another page
			e.preventDefault();
			if (e.target.className != 'robot-box') {

				var url = e.target.parentNode.href;


				// making ajax call
				$.ajax({
					url: url,
					method: 'GET',
					dataType: 'json'
				}).done(function(data){
					console.log(data)
					// var divTag = document.createElement('div');
					// roboDetails.innerHTML = ""
					// var imgTag = document.createElement('img');
					// imgTag.src = "https://robohash.org/" + data.address

					// var pTag = document.createElement('p');
					// pTag.innerText = data.name

					// roboDetails.append(imgTag);
					// roboDetails.append(pTag);

					var source   = document.getElementById("entry-template").innerHTML;
					var template = Handlebars.compile(source);
					 roboDetails.innerHTML = template(data)

					// roboDetails.innerHTML = `<img src="https://robohash.org/`+data.address+`"/><p>`+data.name+`</p>`;
				})




			}

})





console.log("Ending robots js")




});
