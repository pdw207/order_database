require 'spec_helper'

describe "suppliers/index" do
  before(:each) do
    assign(:suppliers, [
      stub_model(Supplier,
        :name => "Name",
        :phone => "Phone",
        :address1 => "Address1",
        :address2 => "Address2",
        :address3 => "Address3",
        :contact_name => "Contact Name",
        :email => "Email",
        :type => "Type",
        :notes => "Notes"
      ),
      stub_model(Supplier,
        :name => "Name",
        :phone => "Phone",
        :address1 => "Address1",
        :address2 => "Address2",
        :address3 => "Address3",
        :contact_name => "Contact Name",
        :email => "Email",
        :type => "Type",
        :notes => "Notes"
      )
    ])
  end

  it "renders a list of suppliers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "Address3".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
  end
end
