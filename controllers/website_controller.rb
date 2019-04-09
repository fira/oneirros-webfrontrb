require_relative 'application_controller.rb'

module Oneirros
	module WebFront
		class WebsiteController < Oneirros::WebFront::ApplicationController
			get '/' do 
				haml :index
			end
		end
	end
end
