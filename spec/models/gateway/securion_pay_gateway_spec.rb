require 'spec_helper'

describe Spree::Gateway::SecurionPayGateway do
  let(:gateway) { described_class.create!(name: 'SecurionPayGateway') }

  context '.provider_class' do
    it 'is a SecurionPayGateway gateway' do
      expect(gateway.provider_class).to eq ::ActiveMerchant::Billing::SecurionPayGateway
    end
  end
end
