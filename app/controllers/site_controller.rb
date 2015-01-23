class SiteController < ApplicationController

	def index
		@concerts = Concert.all
	end

end