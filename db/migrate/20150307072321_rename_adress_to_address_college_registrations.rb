class RenameAdressToAddressCollegeRegistrations < ActiveRecord::Migration
  def change
    rename_column :college_registrations, :adress, :address
  end
end
