/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    $('button[type="submit"]').click(function() {
      checked = $("input[type=checkbox]:checked").length;

      if(checked <= 0) {
        alert("You must check at least one skill.");
        return false;
      } else if (checked > 3) {
          alert("You cant choose more than 3 skills.");
          return false;
      } else {
          
      };

    });
});
