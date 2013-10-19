require "spec_helper"

describe BuyerMailer do
  describe "new_buyer" do
    let(:mail) { BuyerMailer.new_buyer }

    it "renders the headers" do
      mail.subject.should eq("New buyer")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
