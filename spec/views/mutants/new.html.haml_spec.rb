require 'spec_helper'

describe "mutants/new" do
  before(:each) do
    assign(:mutant, stub_model(Mutant,
      :name => "MyMutant Name",
      :country => "Italy",
      :team => nil
    ).as_new_record)
  end

  it "renders new mutant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mutants_path, "post" do
      assert_select "input#mutant_name[name=?]", "mutant[name]"
      assert_select "select#mutant_country[name=?]", "mutant[country]"
    end
  end
end
