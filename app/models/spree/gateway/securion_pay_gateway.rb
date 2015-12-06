module Spree
  class Gateway::SecurionPayGateway < Gateway

    preference :secret_key, :string
    def provider_class
      ActiveMerchant::Billing::SecurionPayGateway
    end

    def options
      # add :test key in the options hash, as that is what the ActiveMerchant::Billing::AuthorizeNetGateway expects

        ActiveMerchant::Billing::SecurionPayGateway.default_currency = 'INR'


      super
    end

    def add_customer_data(post, gateway_options)
      gateway_options[:ip] = "192.168.0.2"
      gateway_options[:description] = "description"
      gateway_options[:user_agent] = "mozilla"
      gateway_options[:referrer] = "kalyan"
      provider.add_customer_data(post, gateway_options)
    end

  end
end
