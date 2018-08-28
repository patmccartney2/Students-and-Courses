class CreateAddress < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :description
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip_code
    end
  end
end
