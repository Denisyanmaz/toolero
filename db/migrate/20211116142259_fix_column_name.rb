class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :tools, :type, :tool_type
  end
end
