class Shift < ApplicationRecord
  attr_accessor :date, :start_time, :end_time, :overnight
  belongs_to :user
  belongs_to :organization
  has_many :breaks

  scope :newest, -> {order(start: :desc)}

  def set_start
    start = date + " " + start_time
  end

  def set_end
    self[:end] = date + " " + end_time
  end

  def hours_worked
    ((self[:end] - start)/3600).round(1)
  end

  def display_date
    start.strftime("%m/%d/%Y")
  end

  def display_time
    start.strftime("%l:%M %p")
  end

  def cost
    (hours_worked * self.organization.hourly_rate).round(2)
  end


end
