class JobSerializer < ActiveModel::Serializer
  cache

  attributes :id, :title, :pay_rate, :created_at, :updated_at

  belongs_to :employer
  has_many :shifts
end
