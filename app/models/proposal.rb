class Proposal < ApplicationRecord
  belongs_to :advisor
  belongs_to :risk_model
  belongs_to :client
  belongs_to :invitation
end