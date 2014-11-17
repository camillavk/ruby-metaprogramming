require 'students'

describe Student do
  let(:student){Student.new}
  it 'does not have an award' do
    expect(student.has_unixoid?).to be false
  end

  it 'can have badges awarded' do
    student.award :unixoid
    expect(student.has_unixoid?).to be true
  end
end
