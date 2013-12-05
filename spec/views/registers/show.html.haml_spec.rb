require 'spec_helper'

describe "registers/show" do
  before(:each) do
    @register = assign(:register, stub_model(Register,
      :Descripcion => "Descripcion",
      :codigo => "Codigo",
      :tipo => "Tipo",
      :paypal => "9.99",
      :banco => "9.99",
      :payoneer => "9.99",
      :obligaciones => "9.99",
      :effectivo => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descripcion/)
    rendered.should match(/Codigo/)
    rendered.should match(/Tipo/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
  end
end
