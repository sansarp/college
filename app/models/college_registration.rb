class CollegeRegistration < ActiveRecord::Base
  validates :name, :description, :address, :phone, :email, :college_type, presence: :true
end
