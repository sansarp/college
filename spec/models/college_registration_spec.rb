require 'rails_helper'
require 'spec_helper'

RSpec.describe CollegeRegistration, type: :model do
  let!(:college_registration) { create(:college_registration)}

  describe :validation do
    subject { build(:college_registration) }
    context 'validate presence of' do
      FactoryGirl.build(:college_registration)
      it { is_expected.to validate_presence_of(:name) }

    end


  end
end
