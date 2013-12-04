require 'spec_helper'

describe "product_types/new" do
  before(:each) do
    assign(:product_type, stub_model(ProductType,
      :nombre => "MyString"
    ).as_new_record)
  end

  it "renders new product_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", product_types_path, "post" do
      assert_select "input#product_type_nombre[name=?]", "product_type[nombre]"
    end
  end
end
