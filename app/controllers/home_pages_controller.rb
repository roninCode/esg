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
  
  def testimonials
    render 'testimonial.html.erb'
  end
  
  def prices
    render 'prices.html.erb'
  end

  def blogs
    render 'blog.html.erb'
  end
end
