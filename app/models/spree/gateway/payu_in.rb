module Spree
  class Gateway::PayuIn < Gateway
    preference :login, :string
    preference :password, :string
    preference :salt, :string
    preference :key, :string
    def provider_class
      ActiveMerchant::Billing::PayuInGateway
    end


  end
end
