class Race < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :race_name
  validates_presence_of :time_minute
  validates_presence_of :distance
  validates :time_second, :numericality => { :greater_than => -1, :less_than_or_equal_to => 59 }
  validates :time_minute, :numericality => { :greater_than => -1 }


  def format_time
    "#{time_minute}:#{time_second}"
  end

end
