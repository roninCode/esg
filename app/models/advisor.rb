class Advisor < ApplicationRecord
  has_secure_password
  has_many :questionnaires
  has_many :proposals
  has_many :clients, through: :proposals
  has_many :invitations, through: :proposals
  
  mount_uploader :logo, LogoUploader
  validates :name, presence: true
  validates :email, presence: true
  validates :zip_code, presence: true
  validates :password, presence: true
  scoped_search on: [:tags]
end
