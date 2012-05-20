class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :title
      t.text :bio
      t.string :image_url

      t.timestamps
    end
  end
end
