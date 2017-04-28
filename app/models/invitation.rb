class Invitation < ApplicationRecord
  validates_uniqueness_of :advisor_id, :scope => [:client_id]
end