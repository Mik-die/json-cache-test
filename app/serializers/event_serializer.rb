class EventSerializer < ActiveModel::Serializer
  cache

  attributes :id, :title, :start_time, :end_time

  belongs_to :employer
  has_many :jobs, serializer: JobSerializer
end
