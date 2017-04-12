class HomePagesController < ApplicationController
  def index
    render 'index.html.erb'
  end

  def about
    render 'about.html.erb'
  end

  def esg
    render 'esg.html.erb'
  end
  
end
