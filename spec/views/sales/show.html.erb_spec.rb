require 'spec_helper'

describe "sales/show" do
  before(:each) do
    @sale = assign(:sale, stub_model(Sale,
      :amount => "9.99",
      :name => "Name",
      :export => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    rendered.should match(/Name/)
    rendered.should match(/false/)
  end
end
