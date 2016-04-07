class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :pay_rate

  belongs_to :employer
  has_many :shifts
end
