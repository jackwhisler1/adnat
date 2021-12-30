class Shift < ApplicationRecord
  belongs_to :user
  belongs_to :organization
  has_many :breaks

  def hours_worked
    start - start
  end

end
