// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

import "@hotwired/turbo-rails"
import "controllers"

$(document).on("turbo:load", function (e) {
    hideShowAddress();
});

function hideShowAddress() {
    $("#address-toggle").on("change", function (e) {
        $("#address-details").toggleClass("d-none");

        if ($("#lblShowHide").text() === "Hide Address") {
            $("#lblShowHide").text("Show Address");
        } else {
            $("#lblShowHide").text("Hide Address");
        }
    })

}