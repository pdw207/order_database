require 'spec_helper'

describe "customers/new" do
  before(:each) do
    assign(:customer, stub_model(Customer,
      :compania => "MyString",
      :nombre_de_contacto => "MyString",
      :email_de_contacto => "MyString",
      :telefono_1 => "MyString",
      :telefono_2 => "MyString",
      :direccion_1 => "MyString",
      :direccion_2 => "MyString",
      :direccion_3 => "MyString",
      :ciudad => "MyString",
      :estado => "MyString",
      :codigo_postal => "MyString",
      :pais => "MyString",
      :factura_nombre => "MyString",
      :factura_RUC => "MyString",
      :factura_telefono => "MyString",
      :factura_direccion => "MyString",
      :enviar_factura_1 => "MyString",
      :enviar_factura_2 => "MyString",
      :enviar_factura_3 => "MyString",
      :enviar_factura_4 => "MyString",
      :enviar_factura_5 => "MyString"
    ).as_new_record)
  end

  it "renders new customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", customers_path, "post" do
      assert_select "input#customer_compania[name=?]", "customer[compania]"
      assert_select "input#customer_nombre_de_contacto[name=?]", "customer[nombre_de_contacto]"
      assert_select "input#customer_email_de_contacto[name=?]", "customer[email_de_contacto]"
      assert_select "input#customer_telefono_1[name=?]", "customer[telefono_1]"
      assert_select "input#customer_telefono_2[name=?]", "customer[telefono_2]"
      assert_select "input#customer_direccion_1[name=?]", "customer[direccion_1]"
      assert_select "input#customer_direccion_2[name=?]", "customer[direccion_2]"
      assert_select "input#customer_direccion_3[name=?]", "customer[direccion_3]"
      assert_select "input#customer_ciudad[name=?]", "customer[ciudad]"
      assert_select "input#customer_estado[name=?]", "customer[estado]"
      assert_select "input#customer_codigo_postal[name=?]", "customer[codigo_postal]"
      assert_select "input#customer_pais[name=?]", "customer[pais]"
      assert_select "input#customer_factura_nombre[name=?]", "customer[factura_nombre]"
      assert_select "input#customer_factura_RUC[name=?]", "customer[factura_RUC]"
      assert_select "input#customer_factura_telefono[name=?]", "customer[factura_telefono]"
      assert_select "input#customer_factura_direccion[name=?]", "customer[factura_direccion]"
      assert_select "input#customer_enviar_factura_1[name=?]", "customer[enviar_factura_1]"
      assert_select "input#customer_enviar_factura_2[name=?]", "customer[enviar_factura_2]"
      assert_select "input#customer_enviar_factura_3[name=?]", "customer[enviar_factura_3]"
      assert_select "input#customer_enviar_factura_4[name=?]", "customer[enviar_factura_4]"
      assert_select "input#customer_enviar_factura_5[name=?]", "customer[enviar_factura_5]"
    end
  end
end
