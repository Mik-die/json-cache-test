class EmployerSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone, :approved

  has_many :jobs

  class JobSerializer < ::JobSerializer
    attributes :wage

    def wage
      'here comes wage calculation'
    end
  end
end
