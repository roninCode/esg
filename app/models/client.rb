class Client < ApplicationRecord
  has_secure_password
  has_many :proposals
  has_many :advisors, through: :proposals
  has_many :invitations, through: :proposals
  has_many :questionnaires

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
 