# https://github.com/Dynamoid/dynamoid/blob/master/lib/dynamoid/adapter.rb:124,132
module Dynamoid
  class Adapter
    def create_table(table_name, key, options = {})
      raise 'Creation of a table is not allowed' unless tables.include?(table_name)
    end

    def delete_table(table_name, options = {})
      raise 'Deletion of a table is not allowed' if tables.include?(table_name)
    end
  end
end
