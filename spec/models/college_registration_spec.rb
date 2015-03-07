require 'rails_helper'

RSpec.describe CollegeRegistration, type: :model do
  let!(:college_registration) { create(:college_registration)}

  describe :validation do
    subject { build(:college_registration) }
    context 'validate presence of' do
      FactoryGirl.build(:college_registration)
      it { is_expected.to validate_presence_of(:name) }
      it { is_expected.to validate_presence_of(:description) }
      it { is_expected.to validate_presence_of(:address) }
      it { is_expected.to validate_presence_of(:phone) }
      it { is_expected.to validate_presence_of(:email) }
      it { is_expected.to validate_presence_of(:college_type) }
    end


  end
end
