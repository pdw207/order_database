require 'spec_helper'

describe "product_types/edit" do
  before(:each) do
    @product_type = assign(:product_type, stub_model(ProductType,
      :nombre => "MyString"
    ))
  end

  it "renders the edit product_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", product_type_path(@product_type), "post" do
      assert_select "input#product_type_nombre[name=?]", "product_type[nombre]"
    end
  end
end
