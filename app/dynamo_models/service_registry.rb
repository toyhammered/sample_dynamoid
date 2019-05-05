class ServiceRegistry
  include Dynamoid::Document

  table name: DynamoidTableSearch.find('service_registry'), key: :sr_id

  field :name
  field :number, :number

  global_secondary_index name: 'number-index', hash_key: :number, projected_attributes: :all
end
