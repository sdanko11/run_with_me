class User < ActiveRecord::Base
  has_many :races
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :encrypted_password
  validates :time_running, numericality: :true
  validates :average_pace_second, numericality: :true
  validates_presence_of :average_pace_second
  validates_presence_of :average_pace_minute, numericality: :true
  validates :distance_per_week, numericality: :true
  validates :distance_per_week, :numericality => { :greater_than => 0 }
  validates :average_pace_second, :numericality => { :greater_than => -1, :less_than_or_equal_to => 59 }
  validates :average_pace_minute, numericality: :true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
