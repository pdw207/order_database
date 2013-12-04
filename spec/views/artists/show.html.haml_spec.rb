require 'spec_helper'

describe "artists/show" do
  before(:each) do
    @artist = assign(:artist, stub_model(Artist,
      :nombre => "Nombre",
      :papel => "Papel",
      :nombre_de_banco => "Nombre De Banco",
      :cuenta_de_banco => "Cuenta De Banco",
      :telefono => "Telefono",
      :direccion_1 => "Direccion 1",
      :direccion_2 => "Direccion 2",
      :direccion_3 => "Direccion 3"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/Papel/)
    rendered.should match(/Nombre De Banco/)
    rendered.should match(/Cuenta De Banco/)
    rendered.should match(/Telefono/)
    rendered.should match(/Direccion 1/)
    rendered.should match(/Direccion 2/)
    rendered.should match(/Direccion 3/)
  end
end
