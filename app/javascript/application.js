// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
// import "bootstrap"
// import "bootstrap/dist/css/bootstrap.min.css"


import { Turbo } from "turbo-rails"
import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"