require 'spec_helper'

describe "suppliers/new" do
  before(:each) do
    assign(:supplier, stub_model(Supplier,
      :name => "MyString",
      :phone => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :address3 => "MyString",
      :contact_name => "MyString",
      :email => "MyString",
      :type => "",
      :notes => "MyString"
    ).as_new_record)
  end

  it "renders new supplier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", suppliers_path, "post" do
      assert_select "input#supplier_name[name=?]", "supplier[name]"
      assert_select "input#supplier_phone[name=?]", "supplier[phone]"
      assert_select "input#supplier_address1[name=?]", "supplier[address1]"
      assert_select "input#supplier_address2[name=?]", "supplier[address2]"
      assert_select "input#supplier_address3[name=?]", "supplier[address3]"
      assert_select "input#supplier_contact_name[name=?]", "supplier[contact_name]"
      assert_select "input#supplier_email[name=?]", "supplier[email]"
      assert_select "input#supplier_type[name=?]", "supplier[type]"
      assert_select "input#supplier_notes[name=?]", "supplier[notes]"
    end
  end
end
