class Event < ActiveRecord::Base
  belongs_to :employer
  has_many :jobs
end
