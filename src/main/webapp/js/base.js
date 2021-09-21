document.getElementById("addProduct").addEventListener("click", myFunction);

function myFunction() {
     var btnmodal = document.querySelector('.modal ');
     Object.assign(btnmodal.style, {
         display: 'block'
     });

}
