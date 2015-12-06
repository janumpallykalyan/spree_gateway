require 'spec_helper'

describe Spree::Gateway::PayuIn do
  let(:gateway) { described_class.create!(name: 'PayuIn') }

  context '.provider_class' do
    it 'is a PayuIn gateway' do
      expect(gateway.provider_class).to eq ::ActiveMerchant::Billing::PayuInGateway
    end
  end
end
