class ShiftSerializer < ActiveModel::Serializer
  cache only: [:net_amount]

  attributes :id, :start_time, :end_time, :net_amount

  def net_amount
    sleep 0.2
    'net amount comes here!'
  end
end
