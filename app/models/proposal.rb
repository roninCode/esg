class Proposal < ApplicationRecord
  belongs_to :advisor
  belongs_to :risk_model
  belongs_to :client

  mount_uploader :pdf, LogoUploader
end