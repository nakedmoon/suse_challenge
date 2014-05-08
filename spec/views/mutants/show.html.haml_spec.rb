require 'spec_helper'

describe "mutants/show" do
  before(:each) do
    @mutant = assign(:mutant, stub_model(Mutant,
      :name => "MyMutant Name",
      :country => "Italy"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyMutant Name/)
    rendered.should match(/Italy/)
    rendered.should match(//)
  end
end
