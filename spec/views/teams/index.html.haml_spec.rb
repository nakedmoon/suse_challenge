require 'spec_helper'

describe "teams/index" do
  before(:each) do
    assign(:teams, [
      stub_model(Team,
        :id => 101,
        :name => "MyName1",
        :description => "MyText1",
        :created_at => 'Thu, 08 May 2014 20:41:12 +0000'
      ),
      stub_model(Team,
        :id => 102,
        :name => "MyName2",
        :description => "MyText2",
        :created_at => 'Thu, 09 May 2014 20:41:12 +0000'
      )
    ])
  end

  it "renders a list of teams" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>th", :text => "Id".to_s, :count => 1
    assert_select "tr>th", :text => "Name".to_s, :count => 1
    assert_select "tr>th", :text => "Description".to_s, :count => 1
    assert_select "tr>th", :text => "Created at".to_s, :count => 1
    assert_select "tr>td", :text => "101".to_s, :count => 1
    assert_select "tr>td", :text => "102".to_s, :count => 1
    assert_select "tr>td", :text => "MyName1".to_s, :count => 1
    assert_select "tr>td", :text => "MyName2".to_s, :count => 1
    assert_select "tr>td", :text => "MyText1".to_s, :count => 1
    assert_select "tr>td", :text => "MyText2".to_s, :count => 1


  end
end
