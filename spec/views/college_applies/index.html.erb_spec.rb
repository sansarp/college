require 'rails_helper'

RSpec.describe "college_applies/index", :type => :view do
  before(:each) do
    assign(:college_applies, [
      CollegeApply.create!(
        :name => "Name",
        :course => "Course",
        :college_session => "College Session",
        :apply_date => "Apply Date"
      ),
      CollegeApply.create!(
        :name => "Name",
        :course => "Course",
        :college_session => "College Session",
        :apply_date => "Apply Date"
      )
    ])
  end

  it "renders a list of college_applies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Course".to_s, :count => 2
    assert_select "tr>td", :text => "College Session".to_s, :count => 2
    assert_select "tr>td", :text => "Apply Date".to_s, :count => 2
  end
end
