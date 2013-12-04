require 'spec_helper'

describe "my_details/show" do
  before(:each) do
    @my_detail = assign(:my_detail, stub_model(MyDetail,
      :compania_nombre => "Compania Nombre",
      :RUC => "Ruc",
      :direccion_1 => "Direccion 1",
      :direccion_2 => "Direccion 2",
      :direccion_3 => "Direccion 3",
      :email => "Email",
      :cuidad => "Cuidad",
      :provencia => "Provencia",
      :codigo_postal => "Codigo Postal",
      :business_phone => "Business Phone",
      :arancel_codigo => "Arancel Codigo",
      :description_arancel => "Description Arancel",
      :puerto_embarque => "Puerto Embarque",
      :cuidad_embarque => "Cuidad Embarque"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Compania Nombre/)
    rendered.should match(/Ruc/)
    rendered.should match(/Direccion 1/)
    rendered.should match(/Direccion 2/)
    rendered.should match(/Direccion 3/)
    rendered.should match(/Email/)
    rendered.should match(/Cuidad/)
    rendered.should match(/Provencia/)
    rendered.should match(/Codigo Postal/)
    rendered.should match(/Business Phone/)
    rendered.should match(/Arancel Codigo/)
    rendered.should match(/Description Arancel/)
    rendered.should match(/Puerto Embarque/)
    rendered.should match(/Cuidad Embarque/)
  end
end
