class Advisor < ApplicationRecord
  has_secure_password
  has_many :questionnaires
  has_many :proposals
  has_many :clients, through: :proposals
  has_many :invitations, through: :proposals
end
 