class SitesController < ApplicationController
	layout 'site'
	def index
		render :text=>"",:layout=>true
	end
end
