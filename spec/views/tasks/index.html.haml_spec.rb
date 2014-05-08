require 'spec_helper'

describe "tasks/index" do
  before(:each) do
    assign(:tasks, [
      stub_model(Task,
        :id => 101,
        :name => "Name",
        :status => "active",
        :team => nil,
        :created_at => 'Thu, 09 May 2014 20:41:12 +0000'
      ),
      stub_model(Task,
        :id => 102,
        :name => "Name",
        :status => "active",
        :team => nil,
        :created_at => 'Thu, 08 May 2014 20:41:12 +0000'
      )
    ])
  end

  it "renders a list of tasks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>th", :text => "Id".to_s, :count => 1
    assert_select "tr>th", :text => "Name".to_s, :count => 1
    assert_select "tr>th", :text => "Status".to_s, :count => 1
    assert_select "tr>th", :text => "Created at".to_s, :count => 1
    assert_select "tr>th", :text => "Team".to_s, :count => 1
  end
end
