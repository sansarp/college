class CreateCollegeRegistrations < ActiveRecord::Migration
  def change
    create_table :college_registrations do |t|
      t.string :name
      t.text :description
      t.string :adress
      t.string :phone
      t.string :email
      t.string :college_type

      t.timestamps null: false
    end
  end
end
