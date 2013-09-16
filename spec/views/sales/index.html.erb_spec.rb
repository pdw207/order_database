require 'spec_helper'

describe "sales/index" do
  before(:each) do
    assign(:sales, [
      stub_model(Sale,
        :amount => "9.99",
        :name => "Name",
        :export => false
      ),
      stub_model(Sale,
        :amount => "9.99",
        :name => "Name",
        :export => false
      )
    ])
  end

  it "renders a list of sales" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
