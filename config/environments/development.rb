MujeresCambiaMail::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :smtp
  
  config.action_mailer.smtp_settings = {
    # address:              'smtp.gmail.com',
    # port:                 587,
    address:              'smtpout.secureserver.net',
    port:                 80,
    domain:               'mujerescambia.com',
    user_name:            ENV["EMAIL"],
    password:             ENV["PASSWORD"],
    authentication:       'plain',
    enable_starttls_auto: true  }
  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true
  


#     config.paperclip_defaults = {
#   :storage => :s3,
#   :s3_credentials => {
#     :bucket => ENV['mujerescambia'],
#     :access_key_id => ENV['AKIAIPGCZRMT2PKM6BYA'],
#     :secret_access_key => ENV['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']
#   }
# }


end
