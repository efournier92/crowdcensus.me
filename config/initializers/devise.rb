Devise.setup do |config|

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]

  config.skip_session_storage = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 10

  config.reconfirmable = true

  config.expire_all_remember_me_on_sign_out = true

  config.password_length = 8..72

  config.reset_password_within = 6.hours

  config.sign_out_via = :delete

  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  config.secret_key = 'aa7c74517fac885ec031b11e2cfff3b82317e2b59164b51e7655097811549d1855fcf3f8991910a255fd136cc17e4b55c50b79091412b37815578bb43ecd8b32'

end
