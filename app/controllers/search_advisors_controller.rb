class SearchAdvisorsController < ApplicationController
  def index
    @advisors = Advisor.all
    @origin = params[:client_zip_code]
    @destinations = ""
    
    @advisors.each do |advisor|
      if advisor == @advisors.last
        @destinations += "#{advisor.zip_code}"
      else
        @destinations += "#{advisor.zip_code}|"
      end
    end

    @response = Unirest.get("https://maps.googleapis.com/maps/api/distancematrix/json?origins=11206&destinations=#{@destinations}&key=AIzaSyDRvj_4M_xPyfnpWYVqkieWnBcThgRa8_M").body

    render 'index.html.erb'
  end

end
