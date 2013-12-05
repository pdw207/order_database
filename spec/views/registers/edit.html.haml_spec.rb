require 'spec_helper'

describe "registers/edit" do
  before(:each) do
    @register = assign(:register, stub_model(Register,
      :Descripcion => "MyString",
      :codigo => "MyString",
      :tipo => "MyString",
      :paypal => "9.99",
      :banco => "9.99",
      :payoneer => "9.99",
      :obligaciones => "9.99",
      :effectivo => "9.99"
    ))
  end

  it "renders the edit register form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", register_path(@register), "post" do
      assert_select "input#register_Descripcion[name=?]", "register[Descripcion]"
      assert_select "input#register_codigo[name=?]", "register[codigo]"
      assert_select "input#register_tipo[name=?]", "register[tipo]"
      assert_select "input#register_paypal[name=?]", "register[paypal]"
      assert_select "input#register_banco[name=?]", "register[banco]"
      assert_select "input#register_payoneer[name=?]", "register[payoneer]"
      assert_select "input#register_obligaciones[name=?]", "register[obligaciones]"
      assert_select "input#register_effectivo[name=?]", "register[effectivo]"
    end
  end
end
