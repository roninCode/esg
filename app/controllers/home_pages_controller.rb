class HomePagesController < ApplicationController
  def index
    render 'index.html.erb'
  end

  def about
    render 'about.html.erb'
  end
end
