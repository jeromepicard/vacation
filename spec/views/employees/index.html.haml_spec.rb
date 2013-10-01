require 'spec_helper'

describe "employees/index" do
  before(:each) do
    assign(:employees, [
      stub_model(Employee,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :job_title => "Job Title",
        :company => nil
      ),
      stub_model(Employee,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :job_title => "Job Title",
        :company => nil
      )
    ])
  end

  it "renders a list of employees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Job Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
