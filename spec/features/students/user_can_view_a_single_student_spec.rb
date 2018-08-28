require 'rails_helper'

describe 'user can view a student' do
  scenario 'user can navigate to a student show' do
  student1 = Student.create(name: 'Pablo')
  student2 = Student.create(name: 'Juan')

  visit student_path(student1)

  expect(page).to have_content("Student Name: Pablo")

  end
end
