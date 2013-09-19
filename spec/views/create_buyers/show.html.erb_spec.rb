require 'spec_helper'

describe "create_buyers/show" do
  before(:each) do
    @create_buyer = assign(:create_buyer, stub_model(CreateBuyer,
      :company => "",
      :contact_name => "",
      :contact_email => "",
      :contact_phone_1 => "",
      :contact_phone_2 => "",
      :shipping_address_line_1 => "",
      :shipping_address_line_2 => "",
      :factura_information => "",
      :special_instructions => "Special Instructions"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Special Instructions/)
  end
end
