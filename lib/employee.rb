class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { in: 40..200, only_integer: true }
  validates :store, presence: true
end
