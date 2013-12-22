class SmsController < ApplicationController

  def process_sms
    sms = params["Body"]
    logger.info "Received new sms: #{sms}"

    bodies = sms.split(";")
    responses = []
    bodies.each {|body_string|
      begin
        responses << process_single_body_string(body_string)
      rescue Exception => e
        logger.warn "An exception was raised processing the sms: #{e.backtrace.join("\n")}"
        responses << e
      end
    }

    @reply = responses.map{|r|r.to_s}.join("; ")
  end

  private

  def process_single_body_string body_string
    body = body_string.split(",")
    sms_code = body[0].upcase

    case sms_code
    when "A"
      id, description, amount, account = body.drop(1)
      register = Register.new(codigo: id, Descripcion: description, amount: amount, account: account)
      register.save!
      "Todo bien. Gracias."
    else
      raise Exception.new(I18n.t("response.unrecognized_code", :code => sms_code))
    end
  end

end
