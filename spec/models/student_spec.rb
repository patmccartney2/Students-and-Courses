require 'rails_helper'

describe Student, type: :model do
  describe 'validations' do
    it 'should be invalied with a name' do
    student = Student.new()
    expect(student).to be_invalid

    end
  end
end
