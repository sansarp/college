class CollegeRegistration < ActiveRecord::Base
  validates :name, :description,  :phone, :email, :college_type, presence: :true
end
