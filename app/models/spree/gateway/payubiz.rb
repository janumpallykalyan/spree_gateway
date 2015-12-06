module Spree
  class Gateway::PayUbiz < Gateway
    preference :login, :string
    preference :password, :string

    def provider_class
      ActiveMerchant::Billing::PayuInGateway
    end

    
  end
end
