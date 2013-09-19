require 'spec_helper'

describe "create_buyer_tables/new" do
  before(:each) do
    assign(:create_buyer_table, stub_model(CreateBuyerTable,
      :company => "",
      :contact_name => "",
      :contact_email => "",
      :contact_phone_1 => "",
      :contact_phone_2 => "",
      :shipping_address_line_1 => "",
      :shipping_address_line_2 => "",
      :factura_information => "",
      :special_instructions => "MyString"
    ).as_new_record)
  end

  it "renders new create_buyer_table form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", create_buyer_tables_path, "post" do
      assert_select "input#create_buyer_table_company[name=?]", "create_buyer_table[company]"
      assert_select "input#create_buyer_table_contact_name[name=?]", "create_buyer_table[contact_name]"
      assert_select "input#create_buyer_table_contact_email[name=?]", "create_buyer_table[contact_email]"
      assert_select "input#create_buyer_table_contact_phone_1[name=?]", "create_buyer_table[contact_phone_1]"
      assert_select "input#create_buyer_table_contact_phone_2[name=?]", "create_buyer_table[contact_phone_2]"
      assert_select "input#create_buyer_table_shipping_address_line_1[name=?]", "create_buyer_table[shipping_address_line_1]"
      assert_select "input#create_buyer_table_shipping_address_line_2[name=?]", "create_buyer_table[shipping_address_line_2]"
      assert_select "input#create_buyer_table_factura_information[name=?]", "create_buyer_table[factura_information]"
      assert_select "input#create_buyer_table_special_instructions[name=?]", "create_buyer_table[special_instructions]"
    end
  end
end
