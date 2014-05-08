require 'spec_helper'

describe "mutants/edit" do
  before(:each) do
    @mutant = assign(:mutant, stub_model(Mutant,
      :name => "MyMutant Name",
      :country => "Italy"
    ))
  end

  it "renders the edit mutant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mutant_path(@mutant), "post" do
      assert_select "input#mutant_name[name=?]", "mutant[name]"
      assert_select "select#mutant_country[name=?]", "mutant[country]"
    end
  end
end
