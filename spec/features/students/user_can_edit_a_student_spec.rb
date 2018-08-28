require 'rails_helper'

describe 'user can edit an existing student' do
  scenario 'user visits /s/:id/edit edits a student and goes to s/show' do
    student_1 = Student.create(name: 'Ralph')

    visit edit_student_path(student_1)

    fill_in("Name", :with => "Rose")

    click_on("Update Student")

    expect(current_path).to eq(student_path(student_1))
    expect(page).to have_content("Student #{student_1.id}")
    expect(page).to have_content("Student Name: Rose")
  end
end
