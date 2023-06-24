window.addEventListener('DOMContentLoaded', changeLight);

function changeLight() {
     const changeLightBtn = document.getElementById('light-switch');
     const backgroud = document.querySelector('body');

     function changeTheme() {
          if (backgroud.style.background === 'yellow') {
               backgroud.style.background = 'rgb(47, 47, 95)';
          } else {
               backgroud.style.background = 'yellow';
          }
     }

     changeLightBtn.addEventListener('click', changeTheme);
}
