class EmployerSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone, :approved
end
