import "bootstrap";
import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert({
  title: "You successfully applied!",
  text: "",
  icon: "success"
}, (value) => {
  console.log(value);
});
