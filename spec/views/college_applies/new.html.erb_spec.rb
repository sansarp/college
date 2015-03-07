require 'rails_helper'

RSpec.describe "college_applies/new", :type => :view do
  before(:each) do
    assign(:college_apply, CollegeApply.new(
      :name => "MyString",
      :course => "MyString",
      :college_session => "MyString",
      :apply_date => "MyString"
    ))
  end

  it "renders new college_apply form" do
    render

    assert_select "form[action=?][method=?]", college_applies_path, "post" do

      assert_select "input#college_apply_name[name=?]", "college_apply[name]"

      assert_select "input#college_apply_course[name=?]", "college_apply[course]"

      assert_select "input#college_apply_college_session[name=?]", "college_apply[college_session]"

      assert_select "input#college_apply_apply_date[name=?]", "college_apply[apply_date]"
    end
  end
end
