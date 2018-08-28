class Address < ApplicationRecord
  validates :description, :street_address, :city, :state, :zip_code, presence: true
end
