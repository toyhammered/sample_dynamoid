module DynamoidTableSearch
  def self.find(table_name)
    Dynamoid.adapter.tables.find { |table| table =~ /#{table_name}/ }
  end
end
