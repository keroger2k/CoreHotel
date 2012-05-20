class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :title
      t.text :bio
      t.string :avatar
      t.string :order, :default => 1

      t.timestamps
    end
  end
end
