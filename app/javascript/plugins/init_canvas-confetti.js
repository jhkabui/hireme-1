const confetti = require('canvas-confetti');

const carolinConfetti = () => {
  const accepted = document.querySelector('.confeti')
  if (accepted) {
    var myCanvas = document.createElement('canvas');
    var bodzy = document.querySelector('body')
    bodzy.appendChild(myCanvas);

    var myConfetti = confetti.create(myCanvas, {
      resize: true
    });
    var duration = 5 * 1000;
    var animationEnd = Date.now() + duration;
    var defaults = { startVelocity: 30, spread: 360, ticks: 60, zIndex: 0 };

    function randomInRange(min, max) {
      return Math.random() * (max - min) + min;
    }

    var interval = setInterval(function() {
      var timeLeft = animationEnd - Date.now();

      if (timeLeft <= 0) {
        return clearInterval(interval);
      }

      var particleCount = 50 * (timeLeft / duration);
      // since particles fall down, start a bit higher than random
      myConfetti(Object.assign({}, defaults, { particleCount, origin: { x: randomInRange(0.1, 0.3), y: Math.random() - 0.2 } }));
      myConfetti(Object.assign({}, defaults, { particleCount, origin: { x: randomInRange(0.7, 0.9), y: Math.random() - 0.2 } }));
    }, 250);

    const remove = () => {
      myCanvas.remove();
    }

    setInterval(remove, 3000)
    }
}

export { carolinConfetti };