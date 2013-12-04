require 'spec_helper'

describe "designs/new" do
  before(:each) do
    assign(:design, stub_model(Design,
      :product_type_id => 1,
      :nombre => "MyString",
      :detallas => "MyString",
      :nivel => "MyString",
      :Tiempo_en_minutos => "9.99"
    ).as_new_record)
  end

  it "renders new design form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", designs_path, "post" do
      assert_select "input#design_product_type_id[name=?]", "design[product_type_id]"
      assert_select "input#design_nombre[name=?]", "design[nombre]"
      assert_select "input#design_detallas[name=?]", "design[detallas]"
      assert_select "input#design_nivel[name=?]", "design[nivel]"
      assert_select "input#design_Tiempo_en_minutos[name=?]", "design[Tiempo_en_minutos]"
    end
  end
end
