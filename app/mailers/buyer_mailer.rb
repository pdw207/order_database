class BuyerMailer < ActionMailer::Base
  default from: "paul@mujerescambia.com"

  def new_buyer(buyer)
    @buyer = buyer
    mail to: "pdw207@gmail.com", subject: "New Mujeres Cambia Client Addded"
  end
end
