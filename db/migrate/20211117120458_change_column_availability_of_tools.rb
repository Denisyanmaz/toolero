class ChangeColumnAvailabilityOfTools < ActiveRecord::Migration[6.0]
  def change
    change_column :tools, :availability, :boolean, default: true
  end
end
