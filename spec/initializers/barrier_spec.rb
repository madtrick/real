require 'rails_helper'

describe Barrier do
  describe 'whitelisted_emails' do
    before :each do
      ENV['whitelisted_emails'] = %w{foo@bar.com spam@nigeria.com}.join(',')
    end

    it 'returns an array with the whitelisted emails' do
      expect(Barrier.whitelisted_emails).to include('foo@bar.com')
      expect(Barrier.whitelisted_emails).to include('spam@nigeria.com')
    end
  end
end
