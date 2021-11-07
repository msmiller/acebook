// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
const images = require.context('../images', true)
const imagePath = (name) => images(name, true)
const socialimages = require.context('../images/social', true)
const socialimagePath = (name) => socialimages(name, true)

import "controllers"

// Expose jQuery
// https://stackoverflow.com/questions/47380333/rails-js-erb-templates-no-longer-work-with-webpack
import 'expose-loader?$!jquery';
import 'expose-loader?jQuery!jquery';

import "../css/application.scss";

$(document).on('turbolinks:load', function() {
    console.log("FOUNDATION");
    $(function(){ $(document).foundation(); });
});
