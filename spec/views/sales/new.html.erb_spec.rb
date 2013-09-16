require 'spec_helper'

describe "sales/new" do
  before(:each) do
    assign(:sale, stub_model(Sale,
      :amount => "9.99",
      :name => "MyString",
      :export => false
    ).as_new_record)
  end

  it "renders new sale form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sales_path, "post" do
      assert_select "input#sale_amount[name=?]", "sale[amount]"
      assert_select "input#sale_name[name=?]", "sale[name]"
      assert_select "input#sale_export[name=?]", "sale[export]"
    end
  end
end
