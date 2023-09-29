// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("DOMContentLoaded", function() {
  setTimeout(function() {
    var signMessage = document.querySelector(".sign-message");
    signMessage.style.opacity = "1";
    signMessage.style.transform = "translateY(0)";
  }, 1000);
});