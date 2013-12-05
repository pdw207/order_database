class BuyerMailer < ActionMailer::Base
  default from: "info@mujerescambia.com"

  def new_buyer(buyer)
    @buyer = buyer
    mail to: "info@mujerescambia.com, paul@mujerescambia.com", subject: "Nuevo Pedido"
  end
end
