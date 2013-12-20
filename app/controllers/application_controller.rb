class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
	helper_method :current_user
	before_filter :set_locale

  def test_mailer
    order = Order.new
    order.customer = Customer.new
    order.customer.email_de_contacto = "rhok.mujeres.cambia@gmail.com"
    ThankYouMailer.thank_you(order).deliver
    render template: 'test_mailer'
  end

	private

	def current_user
	  @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def set_locale
		I18n.locale = params[:locale] || I18n.default_locale
	end
end
