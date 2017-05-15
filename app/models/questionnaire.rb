class Questionnaire < ApplicationRecord
  belongs_to :client
  belongs_to :advisor

  # def average_to_risk_model
  #   risk_level = 0
  #   if self.average.to_i < 25
  #     risk_level = 1
  #   elsif self.average.to_i < 50
  #     risk_level = 2
  #   elsif self.average.to_i < 70
  #     risk_level = 3
  #   elsif self.average.to_i < 90
  #     risk_level = 4
  #   else
  #     risk_level = 5
  #   end
  #   risk_level
  # end 
end
