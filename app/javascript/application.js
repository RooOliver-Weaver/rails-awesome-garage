// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

console.log("JavaScript loaded");

document.addEventListener("DOMContentLoaded", () => {
  const heartButton = document.querySelector(".heart-button");
  console.log(heartButton);
  heartButton.addEventListener("click", (event) => {
    if (heartButton.disabled || heartButton.getAttribute('data-disabled') === 'true') {
      event.preventDefault();
      return;
    }

    const heartIcon = heartButton.querySelector("i");

    heartIcon.classList.toggle("heart-filled");
    heartIcon.classList.toggle("heart-empty");
  });
});
