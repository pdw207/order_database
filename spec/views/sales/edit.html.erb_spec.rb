require 'spec_helper'

describe "sales/edit" do
  before(:each) do
    @sale = assign(:sale, stub_model(Sale,
      :amount => "9.99",
      :name => "MyString",
      :export => false
    ))
  end

  it "renders the edit sale form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sale_path(@sale), "post" do
      assert_select "input#sale_amount[name=?]", "sale[amount]"
      assert_select "input#sale_name[name=?]", "sale[name]"
      assert_select "input#sale_export[name=?]", "sale[export]"
    end
  end
end
