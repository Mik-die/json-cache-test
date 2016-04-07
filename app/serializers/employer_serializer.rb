class EmployerSerializer < ActiveModel::Serializer
  cache

  attributes :id, :name, :phone, :approved

  has_many :jobs

  # Template Dependency: job_serializer
  class JobSerializer < ::JobSerializer
    cache key: 'employer-job'

    attributes :wage

    def wage
      sleep 1
      'here comes wage calculation!'
    end
  end
end
