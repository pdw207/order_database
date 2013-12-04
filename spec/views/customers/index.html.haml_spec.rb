require 'spec_helper'

describe "customers/index" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
        :compania => "Compania",
        :nombre_de_contacto => "Nombre De Contacto",
        :email_de_contacto => "Email De Contacto",
        :telefono_1 => "Telefono 1",
        :telefono_2 => "Telefono 2",
        :direccion_1 => "Direccion 1",
        :direccion_2 => "Direccion 2",
        :direccion_3 => "Direccion 3",
        :ciudad => "Ciudad",
        :estado => "Estado",
        :codigo_postal => "Codigo Postal",
        :pais => "Pais",
        :factura_nombre => "Factura Nombre",
        :factura_RUC => "Factura Ruc",
        :factura_telefono => "Factura Telefono",
        :factura_direccion => "Factura Direccion",
        :enviar_factura_1 => "Enviar Factura 1",
        :enviar_factura_2 => "Enviar Factura 2",
        :enviar_factura_3 => "Enviar Factura 3",
        :enviar_factura_4 => "Enviar Factura 4",
        :enviar_factura_5 => "Enviar Factura 5"
      ),
      stub_model(Customer,
        :compania => "Compania",
        :nombre_de_contacto => "Nombre De Contacto",
        :email_de_contacto => "Email De Contacto",
        :telefono_1 => "Telefono 1",
        :telefono_2 => "Telefono 2",
        :direccion_1 => "Direccion 1",
        :direccion_2 => "Direccion 2",
        :direccion_3 => "Direccion 3",
        :ciudad => "Ciudad",
        :estado => "Estado",
        :codigo_postal => "Codigo Postal",
        :pais => "Pais",
        :factura_nombre => "Factura Nombre",
        :factura_RUC => "Factura Ruc",
        :factura_telefono => "Factura Telefono",
        :factura_direccion => "Factura Direccion",
        :enviar_factura_1 => "Enviar Factura 1",
        :enviar_factura_2 => "Enviar Factura 2",
        :enviar_factura_3 => "Enviar Factura 3",
        :enviar_factura_4 => "Enviar Factura 4",
        :enviar_factura_5 => "Enviar Factura 5"
      )
    ])
  end

  it "renders a list of customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Compania".to_s, :count => 2
    assert_select "tr>td", :text => "Nombre De Contacto".to_s, :count => 2
    assert_select "tr>td", :text => "Email De Contacto".to_s, :count => 2
    assert_select "tr>td", :text => "Telefono 1".to_s, :count => 2
    assert_select "tr>td", :text => "Telefono 2".to_s, :count => 2
    assert_select "tr>td", :text => "Direccion 1".to_s, :count => 2
    assert_select "tr>td", :text => "Direccion 2".to_s, :count => 2
    assert_select "tr>td", :text => "Direccion 3".to_s, :count => 2
    assert_select "tr>td", :text => "Ciudad".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
    assert_select "tr>td", :text => "Codigo Postal".to_s, :count => 2
    assert_select "tr>td", :text => "Pais".to_s, :count => 2
    assert_select "tr>td", :text => "Factura Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Factura Ruc".to_s, :count => 2
    assert_select "tr>td", :text => "Factura Telefono".to_s, :count => 2
    assert_select "tr>td", :text => "Factura Direccion".to_s, :count => 2
    assert_select "tr>td", :text => "Enviar Factura 1".to_s, :count => 2
    assert_select "tr>td", :text => "Enviar Factura 2".to_s, :count => 2
    assert_select "tr>td", :text => "Enviar Factura 3".to_s, :count => 2
    assert_select "tr>td", :text => "Enviar Factura 4".to_s, :count => 2
    assert_select "tr>td", :text => "Enviar Factura 5".to_s, :count => 2
  end
end
