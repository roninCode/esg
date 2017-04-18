class Questionnaire < ApplicationRecord
  belongs_to :client
  belongs_to :advisor
end
