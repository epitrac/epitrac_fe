function clickHomePin() {
  let homeState = document.getElementById('home_state').getAttribute('home_state');
  document.getElementById(homeState).click();
}

window.onload = clickHomePin();