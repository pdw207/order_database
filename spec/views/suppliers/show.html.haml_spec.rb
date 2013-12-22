require 'spec_helper'

describe "suppliers/show" do
  before(:each) do
    @supplier = assign(:supplier, stub_model(Supplier,
      :name => "Name",
      :phone => "Phone",
      :address1 => "Address1",
      :address2 => "Address2",
      :address3 => "Address3",
      :contact_name => "Contact Name",
      :email => "Email",
      :type => "Type",
      :notes => "Notes"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Phone/)
    rendered.should match(/Address1/)
    rendered.should match(/Address2/)
    rendered.should match(/Address3/)
    rendered.should match(/Contact Name/)
    rendered.should match(/Email/)
    rendered.should match(/Type/)
    rendered.should match(/Notes/)
  end
end
