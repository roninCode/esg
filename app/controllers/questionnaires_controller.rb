class QuestionnairesController < ApplicationController
  
  def index
    @questionnaires = Questionnaire.all
    render 'index.html'
  end

  def new
    render 'new.html.erb'
  end

  def create
    questionnaire = Questionnaire.new(
      client_id: current_client.id,
      question_1: params[:question_1],
      question_2: params[:question_2],
      question_3: params[:question_3],
      question_4: params[:question_4],
      question_5: params[:question_5],
      question_6: params[:question_6],
      question_7: params[:question_7],
      question_8: params[:question_8],
      question_9: params[:question_9],
      question_10: params[:question_10],
      question_11: params[:question_11],
      average: ((params[:question_1].to_i + params[:question_2].to_i + params[:question_3].to_i + params[:question_4].to_i + params[:question_5].to_i + params[:question_6].to_i + params[:question_7].to_i + params[:question_8].to_i + params[:question_9].to_i + params[:question_10].to_i + params[:question_11].to_i).to_f / 52.0 * 100)
    )
    if questionnaire.save
      flash[:success] = "You successfully submitted your questionnaire"
      redirect_to '/questionnaires'
    else
      flash[:danger] = "Questionnaire was NOT submitted"
      render 'new.html.erb'
    end
  end
end
