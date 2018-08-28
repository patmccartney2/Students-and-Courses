require 'rails_helper'

describe 'user can add adress to student' do
  scenario 'from nested path user can add address to student' do
    student = Student.create(name: "Fry")

    visit new_student_address_path(student)

    fill_in("Description", :with => "Mansion")
    fill_in("Street address", :with => "1 Rich Ln")
    fill_in("City", :with => "Wealthsburg")
    fill_in("State", :with => "Richville")
    fill_in("Zip code", :with => 00001)
    click_on("Create Address")
  end
end
