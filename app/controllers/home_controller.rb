class HomeController < ApplicationController
	before_filter :authenticate_user!
  def index
    render :text=>"Welcome",:layout=>true
  end

  def new
  	render :text=>"daas",:layout=>true
  end

end
