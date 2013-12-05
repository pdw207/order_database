require 'spec_helper'

describe "registers/index" do
  before(:each) do
    assign(:registers, [
      stub_model(Register,
        :Descripcion => "Descripcion",
        :codigo => "Codigo",
        :tipo => "Tipo",
        :paypal => "9.99",
        :banco => "9.99",
        :payoneer => "9.99",
        :obligaciones => "9.99",
        :effectivo => "9.99"
      ),
      stub_model(Register,
        :Descripcion => "Descripcion",
        :codigo => "Codigo",
        :tipo => "Tipo",
        :paypal => "9.99",
        :banco => "9.99",
        :payoneer => "9.99",
        :obligaciones => "9.99",
        :effectivo => "9.99"
      )
    ])
  end

  it "renders a list of registers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descripcion".to_s, :count => 2
    assert_select "tr>td", :text => "Codigo".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
