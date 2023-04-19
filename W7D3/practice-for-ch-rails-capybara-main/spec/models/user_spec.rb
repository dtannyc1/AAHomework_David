require 'rails_helper'

RSpec.describe User, type: :model do
    describe 'email' do
        it { should validate_presence_of(:email) }
    end

    describe 'password_digest' do
        it { should validate_presence_of(:password_digest) }
    end

    describe 'password' do
        it { should validate_length_of(:password).is_at_least(6) }
    end

    # describe '#is_password?' do
    #     it
    # end
end
