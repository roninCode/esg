class SearchAdvisorsController < ApplicationController
  def index
    @advisors_list = []
    if params[:client_zip_code] && params[:advisor_tags]
      @advisor_tags = []
      @advisor_tags_phrase = params[:advisor_tags]
      ad_tags_split = params[:advisor_tags].split
      ad_tags_split.each do |word|
        if word != ad_tags_split.last
          @advisor_tags << word + " || "
        else
          @advisor_tags << word
        end
      end
      @advisor_tags = @advisor_tags.join
      Advisor.search_for("#{@advisor_tags}").each do |advisor|
        @advisors_list << advisor
      end 
# Above is the tags search
# Below is the distance search
      @origin = params[:client_zip_code]
      @destinations = ""
      @advisors_list.each do |advisor|
        if advisor == @advisors_list.last
          @destinations += "#{advisor.zip_code}"
        else
          @destinations += "#{advisor.zip_code}|"
        end
      end
      @response = Unirest.get("https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=#{@origin}&destinations=#{@destinations}&key=#{ENV['Google_Maps_API']}").body
      @distance = []
      @response['rows'][0]['elements'].each do |trip|
        @distance << trip['distance']['value']
      end
      render 'index.html.erb'
   
    elsif params[:client_zip_code]
      Advisor.all.each do |advisor|
        @advisors_list << advisor
      end
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
      @response = Unirest.get("https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=#{@origin}&destinations=#{@destinations}&key=#{ENV['Google_Maps_API']}").body
      @distance = []
      @response['rows'][0]['elements'].each do |trip|
        @distance << trip['distance']['value']
      end
      render 'index.html.erb'
  
    elsif params[:advisor_tags]  
      @advisor_tags = []
      @advisor_tags_phrase = params[:advisor_tags]
      ad_tags_split = params[:advisor_tags].split
      ad_tags_split.each do |word|
        if word != ad_tags_split.last
          @advisor_tags << word + " || "
        else
          @advisor_tags << word
        end
      end
      @advisor_tags = @advisor_tags.join
      Advisor.search_for("#{@advisor_tags}").each do |advisor|
        @advisors_list << advisor
      end
      render 'index.html.erb'
    end
  end

  def new
    render 'new.html.erb'
  end

end
