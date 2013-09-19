require 'spec_helper'

describe "create_buyers/index" do
  before(:each) do
    assign(:create_buyers, [
      stub_model(CreateBuyer,
        :company => "",
        :contact_name => "",
        :contact_email => "",
        :contact_phone_1 => "",
        :contact_phone_2 => "",
        :shipping_address_line_1 => "",
        :shipping_address_line_2 => "",
        :factura_information => "",
        :special_instructions => "Special Instructions"
      ),
      stub_model(CreateBuyer,
        :company => "",
        :contact_name => "",
        :contact_email => "",
        :contact_phone_1 => "",
        :contact_phone_2 => "",
        :shipping_address_line_1 => "",
        :shipping_address_line_2 => "",
        :factura_information => "",
        :special_instructions => "Special Instructions"
      )
    ])
  end

  it "renders a list of create_buyers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Special Instructions".to_s, :count => 2
  end
end
