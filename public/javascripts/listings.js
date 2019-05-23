const agecareDivs = document.querySelectorAll('.agecare');


function handleClick(evt){
  // when div is clicked ,the div will be selected, it will turn grey 
//get the evt target id from dataset
//push the id into datasets array


let count = document.querySelectorAll('.clicked').length;

if(evt.target.closest('.agecare').classList.contains('clicked')&& count === 3) {
  evt.target.closest('.agecare').classList.toggle("clicked");

}

if(count < 3){

  evt.target.closest('.agecare').classList.toggle("clicked");
}

let ids_selected = [];
let clickedDivs = document.querySelectorAll('.clicked');
clickedDivs.forEach(function(clickedDiv){
  ids_selected.push(clickedDiv.dataset.id)
});

document.querySelector(".agecare-ids").value = ids_selected.toString();

}


agecareDivs.forEach(function(div){

  div.addEventListener('click',handleClick)
})

