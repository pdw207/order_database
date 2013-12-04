require 'spec_helper'

describe "my_details/index" do
  before(:each) do
    assign(:my_details, [
      stub_model(MyDetail,
        :compania_nombre => "Compania Nombre",
        :RUC => "Ruc",
        :direccion_1 => "Direccion 1",
        :direccion_2 => "Direccion 2",
        :direccion_3 => "Direccion 3",
        :email => "Email",
        :cuidad => "Cuidad",
        :provencia => "Provencia",
        :codigo_postal => "Codigo Postal",
        :business_phone => "Business Phone",
        :arancel_codigo => "Arancel Codigo",
        :description_arancel => "Description Arancel",
        :puerto_embarque => "Puerto Embarque",
        :cuidad_embarque => "Cuidad Embarque"
      ),
      stub_model(MyDetail,
        :compania_nombre => "Compania Nombre",
        :RUC => "Ruc",
        :direccion_1 => "Direccion 1",
        :direccion_2 => "Direccion 2",
        :direccion_3 => "Direccion 3",
        :email => "Email",
        :cuidad => "Cuidad",
        :provencia => "Provencia",
        :codigo_postal => "Codigo Postal",
        :business_phone => "Business Phone",
        :arancel_codigo => "Arancel Codigo",
        :description_arancel => "Description Arancel",
        :puerto_embarque => "Puerto Embarque",
        :cuidad_embarque => "Cuidad Embarque"
      )
    ])
  end

  it "renders a list of my_details" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Compania Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Ruc".to_s, :count => 2
    assert_select "tr>td", :text => "Direccion 1".to_s, :count => 2
    assert_select "tr>td", :text => "Direccion 2".to_s, :count => 2
    assert_select "tr>td", :text => "Direccion 3".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Cuidad".to_s, :count => 2
    assert_select "tr>td", :text => "Provencia".to_s, :count => 2
    assert_select "tr>td", :text => "Codigo Postal".to_s, :count => 2
    assert_select "tr>td", :text => "Business Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Arancel Codigo".to_s, :count => 2
    assert_select "tr>td", :text => "Description Arancel".to_s, :count => 2
    assert_select "tr>td", :text => "Puerto Embarque".to_s, :count => 2
    assert_select "tr>td", :text => "Cuidad Embarque".to_s, :count => 2
  end
end
