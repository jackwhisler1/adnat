class Shift < ApplicationRecord
  belongs_to :user
  belongs_to :organization
  has_many :breaks
end
