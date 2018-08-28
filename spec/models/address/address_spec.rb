require 'rails_helper'

describe Address, type: :model do
  describe 'validations' do
    it 'should be invalid without a description' do
      address = Address.new(street_address: "1 Pennsylvania Avenue",
                            city: "Denver",
                            state: "Colorado",
                            zip_code: 80203
                            )
      expect(address).to be_invalid
    end
    it 'should be invalid without a street_address' do
      address = Address.new(description: "1 Pennsylvania Avenue",
                            city: "Denver",
                            state: "Colorado",
                            zip_code: 80203
                            )
      expect(address).to be_invalid
    end
    it 'should be invalid without a city' do
      address = Address.new(street_address: "1 Pennsylvania Avenue",
                            description: "Denver",
                            state: "Colorado",
                            zip_code: 80203
                            )
      expect(address).to be_invalid
    end
    it 'should be invalid without a state' do
      address = Address.new(street_address: "1 Pennsylvania Avenue",
                            city: "Denver",
                            description: "Colorado",
                            zip_code: 80203
                            )
      expect(address).to be_invalid
    end
    it 'should be invalid without a zip_code' do
      address = Address.new(street_address: "1 Pennsylvania Avenue",
                            city: "Denver",
                            state: "Colorado",
                            description: 80203
                            )
      expect(address).to be_invalid
    end
  end
end
