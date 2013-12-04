require 'spec_helper'

describe "customers/show" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Compania/)
    rendered.should match(/Nombre De Contacto/)
    rendered.should match(/Email De Contacto/)
    rendered.should match(/Telefono 1/)
    rendered.should match(/Telefono 2/)
    rendered.should match(/Direccion 1/)
    rendered.should match(/Direccion 2/)
    rendered.should match(/Direccion 3/)
    rendered.should match(/Ciudad/)
    rendered.should match(/Estado/)
    rendered.should match(/Codigo Postal/)
    rendered.should match(/Pais/)
    rendered.should match(/Factura Nombre/)
    rendered.should match(/Factura Ruc/)
    rendered.should match(/Factura Telefono/)
    rendered.should match(/Factura Direccion/)
    rendered.should match(/Enviar Factura 1/)
    rendered.should match(/Enviar Factura 2/)
    rendered.should match(/Enviar Factura 3/)
    rendered.should match(/Enviar Factura 4/)
    rendered.should match(/Enviar Factura 5/)
  end
end
