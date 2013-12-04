require 'spec_helper'

describe "designs/index" do
  before(:each) do
    assign(:designs, [
      stub_model(Design,
        :product_type_id => 1,
        :nombre => "Nombre",
        :detallas => "Detallas",
        :nivel => "Nivel",
        :Tiempo_en_minutos => "9.99"
      ),
      stub_model(Design,
        :product_type_id => 1,
        :nombre => "Nombre",
        :detallas => "Detallas",
        :nivel => "Nivel",
        :Tiempo_en_minutos => "9.99"
      )
    ])
  end

  it "renders a list of designs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Detallas".to_s, :count => 2
    assert_select "tr>td", :text => "Nivel".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
