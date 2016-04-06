class Employer < ActiveRecord::Base
  has_many :events
  has_many :jobs
end
