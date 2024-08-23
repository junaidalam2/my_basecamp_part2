// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"


// document.addEventListener("DOMContentLoaded", function() {
//     const teamLeadCheckbox = document.getElementById("user_[USER_ID]_team_lead"); // Replace with actual ID pattern
  
//     if (teamLeadCheckbox) {
//       teamLeadCheckbox.addEventListener("change", function(event) {
//         const userId = event.target.id.split("_")[1]; // Extract user ID from checkbox ID
//         const userCheckbox = document.getElementById(`user_${userId}`); // Build user checkbox ID
  
//         if (userCheckbox) {
//           userCheckbox.checked = event.target.checked; // Set user checkbox to match team lead checkbox
//         }
//       });
//     }
//   });