require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:state) }
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:password_confirmation) }
  end

  describe 'password digest' do
    it 'should save a password digest when passed a password and password confirmation on creation' do
      User.create!(name: 'John Doe', username: 'john123', email: 'jdoe@email.com', state: 'Colorado', password: 'password123', password_confirmation: 'password123')
      expect(User.count).to eq(1)
      expect(User.first.password_digest).not_to eq(nil)
      expect(User.first.password).to eq(nil)
    end
  end
end
