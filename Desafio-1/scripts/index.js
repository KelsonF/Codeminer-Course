window.addEventListener('DOMContentLoaded', ignite);

function ignite() {
  const satatefullContent = document.getElementById('statefull-number');
  const increaseButton = document.getElementById('increaseButton');
  const decreaseButton = document.getElementById('decreaseButton');

  const state = {
    value: 0,
  };

  const updateUI = () => {
    satatefullContent.innerText = state.value;
  };

  const handleUI = {
    set(object, prop, value) {
      object[prop] = value;
      updateUI();
    },
  };

  //DEIXAR EM ENFASE O FUTURO USO DO METODO PROXY =)
  const proxy = new Proxy(state, handleUI);

  updateUI();

  const incremetValue = () => {
    proxy.value = proxy.value + 1;
  };

  const decremetValue = () => {
    proxy.value = proxy.value - 1;
  };

  increaseButton.addEventListener('click', incremetValue);
  decreaseButton.addEventListener('click', decremetValue);
}
