require 'spec_helper'

describe "my_details/edit" do
  before(:each) do
    @my_detail = assign(:my_detail, stub_model(MyDetail,
      :compania_nombre => "MyString",
      :RUC => "MyString",
      :direccion_1 => "MyString",
      :direccion_2 => "MyString",
      :direccion_3 => "MyString",
      :email => "MyString",
      :cuidad => "MyString",
      :provencia => "MyString",
      :codigo_postal => "MyString",
      :business_phone => "MyString",
      :arancel_codigo => "MyString",
      :description_arancel => "MyString",
      :puerto_embarque => "MyString",
      :cuidad_embarque => "MyString"
    ))
  end

  it "renders the edit my_detail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", my_detail_path(@my_detail), "post" do
      assert_select "input#my_detail_compania_nombre[name=?]", "my_detail[compania_nombre]"
      assert_select "input#my_detail_RUC[name=?]", "my_detail[RUC]"
      assert_select "input#my_detail_direccion_1[name=?]", "my_detail[direccion_1]"
      assert_select "input#my_detail_direccion_2[name=?]", "my_detail[direccion_2]"
      assert_select "input#my_detail_direccion_3[name=?]", "my_detail[direccion_3]"
      assert_select "input#my_detail_email[name=?]", "my_detail[email]"
      assert_select "input#my_detail_cuidad[name=?]", "my_detail[cuidad]"
      assert_select "input#my_detail_provencia[name=?]", "my_detail[provencia]"
      assert_select "input#my_detail_codigo_postal[name=?]", "my_detail[codigo_postal]"
      assert_select "input#my_detail_business_phone[name=?]", "my_detail[business_phone]"
      assert_select "input#my_detail_arancel_codigo[name=?]", "my_detail[arancel_codigo]"
      assert_select "input#my_detail_description_arancel[name=?]", "my_detail[description_arancel]"
      assert_select "input#my_detail_puerto_embarque[name=?]", "my_detail[puerto_embarque]"
      assert_select "input#my_detail_cuidad_embarque[name=?]", "my_detail[cuidad_embarque]"
    end
  end
end
