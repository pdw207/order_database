require 'spec_helper'

describe "artists/new" do
  before(:each) do
    assign(:artist, stub_model(Artist,
      :nombre => "MyString",
      :papel => "MyString",
      :nombre_de_banco => "MyString",
      :cuenta_de_banco => "MyString",
      :telefono => "MyString",
      :direccion_1 => "MyString",
      :direccion_2 => "MyString",
      :direccion_3 => "MyString"
    ).as_new_record)
  end

  it "renders new artist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", artists_path, "post" do
      assert_select "input#artist_nombre[name=?]", "artist[nombre]"
      assert_select "input#artist_papel[name=?]", "artist[papel]"
      assert_select "input#artist_nombre_de_banco[name=?]", "artist[nombre_de_banco]"
      assert_select "input#artist_cuenta_de_banco[name=?]", "artist[cuenta_de_banco]"
      assert_select "input#artist_telefono[name=?]", "artist[telefono]"
      assert_select "input#artist_direccion_1[name=?]", "artist[direccion_1]"
      assert_select "input#artist_direccion_2[name=?]", "artist[direccion_2]"
      assert_select "input#artist_direccion_3[name=?]", "artist[direccion_3]"
    end
  end
end
