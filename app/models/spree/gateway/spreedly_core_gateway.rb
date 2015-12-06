module Spree
  class Gateway::SpreedlyCoreGateway < Gateway
    preference :login, :string
    preference :password, :string
    preference :gateway_token, :string
    def provider_class
      ActiveMerchant::Billing::SpreedlyCoreGateway
    end
    def options
      # add :test key in the options hash, as that is what the ActiveMerchant::Billing::AuthorizeNetGateway expects

        ActiveMerchant::Billing::SpreedlyCoreGateway.default_currency = 'INR'


      super
    end
  end
end
