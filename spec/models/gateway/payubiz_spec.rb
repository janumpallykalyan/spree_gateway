require 'spec_helper'

describe Spree::Gateway::PayUbiz do
  let(:gateway) { described_class.create!(name: 'PayUbiz') }

  context '.provider_class' do
    it 'is a PayUbiz gateway' do
      expect(gateway.provider_class).to eq ::ActiveMerchant::Billing::PayuInGateway
    end
  end
end
