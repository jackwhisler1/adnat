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
    if self[:end]
      ((self[:end] - start)/3600).round(1)
    end
  end

  def display_date
    if start
      start.strftime("%m/%d/%Y")
    end
  end

  def display_time
    if start
      start.strftime("%l:%M %p")
    end
  end

  def cost
    if hours_worked
      (hours_worked * self.organization.hourly_rate).round(2)
    end
  end


end
