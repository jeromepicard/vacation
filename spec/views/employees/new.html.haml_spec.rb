require 'spec_helper'

describe "employees/new" do
  before(:each) do
    assign(:employee, stub_model(Employee,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :job_title => "MyString",
      :company => nil
    ).as_new_record)
  end

  it "renders new employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", employees_path, "post" do
      assert_select "input#employee_first_name[name=?]", "employee[first_name]"
      assert_select "input#employee_last_name[name=?]", "employee[last_name]"
      assert_select "input#employee_email[name=?]", "employee[email]"
      assert_select "input#employee_job_title[name=?]", "employee[job_title]"
      assert_select "input#employee_company[name=?]", "employee[company]"
    end
  end
end
