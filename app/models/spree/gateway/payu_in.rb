module Spree
  class Gateway::PayuIn < Gateway
    preference :login, :string
    preference :password, :string

    def provider_class
      ActiveMerchant::Billing::PayuInGateway
    end


  end
end
