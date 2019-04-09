require 'bundler/setup'
require 'sinatra/base'

require_relative 'controllers/website_controller'

map('/') { 
	run Oneirros::WebFront::WebsiteController.new
}
