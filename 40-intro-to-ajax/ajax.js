window.addEventListener('DOMContentLoaded',function(){

console.log("Starting our ajax js")

// get the button
var getMonsters = document.getElementById('getMonsters');
var monstersDivTag = document.getElementById('monsters');
var postMonsters = document.getElementById('postMonsters');

// add event listener
getMonsters.addEventListener('click',function(){



//make ajax
var request = $.ajax({
	method: 'GET',
	url: 'https://monsters-api.herokuapp.com/monsters.json',
	dataType: 'json'
});

request.done(function(data){
	// monsters.innerHTML = data;


	for (var i = 0; i < data.length ; i++) {
		monstersDivTag.innerHTML += `<p>` + data[i].name+ `<img src="https://robohash.org/`+data[i].id+`"/></p><br/>` 
   }


	// for (var i = 0; i < data.length ; i++) {
	// 	var pTag = document.createElement('p');
	// 	pTag.innerText = data[i].name
	// 	monsters.append(pTag);
	// }

});

request.fail(function(a, s, e ){
	console.log("Oh man, request fails")
	monsters.innerHTML = e;
});

request.always(function(){
	console.log("I will be always here... boooo!!")
})


});



// Post request with ajax
postMonsters.addEventListener('click', function(){

var name = $('#name').val()
var home = $('#home').val()
var creepiness = $('#creepiness').val()

$.ajax({
	url: 'https://monsters-api.herokuapp.com/monsters',
	method: 'POST',
	data: {
		monster: {
			name: name,
			home: home,
			creepiness: creepiness
		}
	}
}).done(function(data){
	console.log('Every went fine');
	console.log(data)
monstersDivTag.innerHTML += `<p>` + data.name+ `<img src="https://robohash.org/`+data.id+`?set=set2
"/></p><br/>` 


}).fail(function(){
	console.log("Something went wrong")
})

});





console.log("Ending our ajax js")


});