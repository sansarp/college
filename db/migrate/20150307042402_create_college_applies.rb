class CreateCollegeApplies < ActiveRecord::Migration
  def change
    create_table :college_applies do |t|
      t.string :name
      t.string :course
      t.string :college_session
      t.string :apply_date

      t.timestamps null: false
    end
  end
end
