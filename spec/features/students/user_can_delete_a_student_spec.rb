require 'rails_helper'

describe 'user can delete a student' do
  scenario 'user, on index, can click delete next to a student to delete the student' do
    student_1 = Student.create(name: 'Fry')
    student_2 = Student.create(name: 'Bender')

    visit students_path

    first(:link, "Delete").click

    expect(current_path).to eq(students_path)
    expect(page).to_not have_content("#{student_1.name}")
    expect(page).to_not have_content("#{student_1.id}")
  end
end
