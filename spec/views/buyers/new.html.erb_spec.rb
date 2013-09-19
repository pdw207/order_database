require 'spec_helper'

describe "buyers/new" do
  before(:each) do
    assign(:buyer, stub_model(Buyer,
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

  it "renders new buyer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", buyers_path, "post" do
      assert_select "input#buyer_company[name=?]", "buyer[company]"
      assert_select "input#buyer_contact_name[name=?]", "buyer[contact_name]"
      assert_select "input#buyer_contact_email[name=?]", "buyer[contact_email]"
      assert_select "input#buyer_contact_phone_1[name=?]", "buyer[contact_phone_1]"
      assert_select "input#buyer_contact_phone_2[name=?]", "buyer[contact_phone_2]"
      assert_select "input#buyer_shipping_address_line_1[name=?]", "buyer[shipping_address_line_1]"
      assert_select "input#buyer_shipping_address_line_2[name=?]", "buyer[shipping_address_line_2]"
      assert_select "input#buyer_factura_information[name=?]", "buyer[factura_information]"
      assert_select "input#buyer_special_instructions[name=?]", "buyer[special_instructions]"
    end
  end
end
