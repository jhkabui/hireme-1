import "bootstrap";
import { initSweetalert } from '../plugins/init_sweetalert';
import { carolinConfetti } from '../plugins/init_canvas-confetti';

initSweetalert({
  title: "You have successfully applied!",
  text: "",
  icon: "success"
}, (value) => {
  console.log(value);
});


carolinConfetti();




// const second_submit_button = document.getElementById("sweet-alert-demo_button");
// if (second_submit_button){
//   if(document.getElementsByClassName("card").length >= 2){
//     second_submit_button.classList.remove("d-none");
//   }
// }
