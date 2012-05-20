class AddOrderToEmployees < ActiveRecord::Migration
  def change
  	add_column :employees, :order, :integer, :default => 1
  end
end
