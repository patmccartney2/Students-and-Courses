require 'rails_helper'

describe 'user can visit student index page' do
  scenario 'user visits index and sees all students displayed' do
    student_1 = Student.create(name:"Pablo")
    student_2 = Student.create(name:"Maria")
    student_3 = Student.create(name:"Ignatious")
    student_4 = Student.create(name:"Jorge")

    visit students_path

    expect(page).to have_content("#{student_1.name}")
    expect(page).to have_content("#{student_2.name}")
    expect(page).to have_content("#{student_3.name}")
    expect(page).to have_content("#{student_4.name}")

  end
end
