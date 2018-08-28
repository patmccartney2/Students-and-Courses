require 'rails_helper'

describe 'user can click student name on index page' do
  scenario 'user on index clicks student name, redirect to /student/id' do
  student1 = Student.create(name: "Bender")
  student2 = Student.create(name: "Fry")

  visit students_path

  click_on("Bender")

  expect(current_path).to eq(student_path(student1))
  expect(page).to_not have_content("Fry")
  end
end
