require 'rails_helper'

RSpec.describe "college_applies/show", :type => :view do
  before(:each) do
    @college_apply = assign(:college_apply, CollegeApply.create!(
      :name => "Name",
      :course => "Course",
      :college_session => "College Session",
      :apply_date => "Apply Date"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Course/)
    expect(rendered).to match(/College Session/)
    expect(rendered).to match(/Apply Date/)
  end
end
