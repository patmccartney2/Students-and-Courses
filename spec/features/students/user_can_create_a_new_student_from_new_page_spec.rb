require 'rails_helper'

describe 'user can create a new student' do
  scenario 'user can create new student from student/new' do

    visit new_student_path

    fill_in("Name", :with => "Rose")

    click_on("Create Student")

    student = Student.find_by(name: "Rose")

    expect(current_path).to eq(student_path(student))
    expect(page).to have_content("Student Name: #{student.name}")
    expect(page).to have_content("Student #{student.id}")
  end
end
