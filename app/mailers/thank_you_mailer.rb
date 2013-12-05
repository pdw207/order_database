class ThankYouMailer < ActionMailer::Base
  default from: "info@mujerescambia.com"

  def thank_you(order)
    @order = order
    @order.fecha_envio = Time.now
    @order.save
    mail to: @order.customer.email_de_contacto, subject: "Thank You for Supporting Mujeres: Cambia"
  end

  
end
