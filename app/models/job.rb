class Job < ActiveRecord::Base
  belongs_to :employer
  belongs_to :event
  has_many :shifts

  accepts_nested_attributes_for :shifts
end
