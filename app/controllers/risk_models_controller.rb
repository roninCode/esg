class RiskModelsController < ApplicationController
  def index
    @risk_models = RiskModel.all
    render 'index.html.erb' 
  end

  def show
    @risk_model = RiskModel.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @risk_model = RiskModel.new(
      name: params[:name],
      risk_level: params[:risk_level],
      description: params[:description],
      allocations: params[:allocations],
      companies: params[:companies],
      etfs: params[:etfs]
    )
    @risk_model.save
    redirect_to '/risk_models'
  end

  def edit
    @risk_model = RiskModel.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @risk_model = RiskModel.find_by(id: params[:id])
    if @risk_model.update(
      name: params[:name],
      risk_level: params[:risk_level],
      description: params[:description],
      allocations: params[:allocations],
      companies: params[:companies],
      etfs: params[:etfs]
    )
    flash[:info] = "You updated this Risk Model"
    redirect_to "/risk_models/#{@risk_model.id}"
    else
      render 'edit.html.erb'
    end
    
  end

  def destroy
    @risk_model = RiskModel.find_by(id: params[:id])
    @risk_model.destroy
    redirect_to '/risk_models'
  end
end
