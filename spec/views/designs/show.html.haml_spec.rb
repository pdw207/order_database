require 'spec_helper'

describe "designs/show" do
  before(:each) do
    @design = assign(:design, stub_model(Design,
      :product_type_id => 1,
      :nombre => "Nombre",
      :detallas => "Detallas",
      :nivel => "Nivel",
      :Tiempo_en_minutos => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Nombre/)
    rendered.should match(/Detallas/)
    rendered.should match(/Nivel/)
    rendered.should match(/9.99/)
  end
end
