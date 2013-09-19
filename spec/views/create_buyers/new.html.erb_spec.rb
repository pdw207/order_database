require 'spec_helper'

describe "create_buyers/new" do
  before(:each) do
    assign(:create_buyer, stub_model(CreateBuyer,
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

  it "renders new create_buyer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", create_buyers_path, "post" do
      assert_select "input#create_buyer_company[name=?]", "create_buyer[company]"
      assert_select "input#create_buyer_contact_name[name=?]", "create_buyer[contact_name]"
      assert_select "input#create_buyer_contact_email[name=?]", "create_buyer[contact_email]"
      assert_select "input#create_buyer_contact_phone_1[name=?]", "create_buyer[contact_phone_1]"
      assert_select "input#create_buyer_contact_phone_2[name=?]", "create_buyer[contact_phone_2]"
      assert_select "input#create_buyer_shipping_address_line_1[name=?]", "create_buyer[shipping_address_line_1]"
      assert_select "input#create_buyer_shipping_address_line_2[name=?]", "create_buyer[shipping_address_line_2]"
      assert_select "input#create_buyer_factura_information[name=?]", "create_buyer[factura_information]"
      assert_select "input#create_buyer_special_instructions[name=?]", "create_buyer[special_instructions]"
    end
  end
end
