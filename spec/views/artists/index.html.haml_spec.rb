require 'spec_helper'

describe "artists/index" do
  before(:each) do
    assign(:artists, [
      stub_model(Artist,
        :nombre => "Nombre",
        :papel => "Papel",
        :nombre_de_banco => "Nombre De Banco",
        :cuenta_de_banco => "Cuenta De Banco",
        :telefono => "Telefono",
        :direccion_1 => "Direccion 1",
        :direccion_2 => "Direccion 2",
        :direccion_3 => "Direccion 3"
      ),
      stub_model(Artist,
        :nombre => "Nombre",
        :papel => "Papel",
        :nombre_de_banco => "Nombre De Banco",
        :cuenta_de_banco => "Cuenta De Banco",
        :telefono => "Telefono",
        :direccion_1 => "Direccion 1",
        :direccion_2 => "Direccion 2",
        :direccion_3 => "Direccion 3"
      )
    ])
  end

  it "renders a list of artists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Papel".to_s, :count => 2
    assert_select "tr>td", :text => "Nombre De Banco".to_s, :count => 2
    assert_select "tr>td", :text => "Cuenta De Banco".to_s, :count => 2
    assert_select "tr>td", :text => "Telefono".to_s, :count => 2
    assert_select "tr>td", :text => "Direccion 1".to_s, :count => 2
    assert_select "tr>td", :text => "Direccion 2".to_s, :count => 2
    assert_select "tr>td", :text => "Direccion 3".to_s, :count => 2
  end
end
