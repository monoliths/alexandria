require 'rails_helper'

RSpec.describe Publisher, type: :model do
  # This test is invalid for nil and empty names. This test the following 3 tests in one line!
  it { should validate_presence_of(:name) }
  # We are not using Factory Girl for simplicity in those examples.
  # it "is invalid with a 'nil' name" do
  #   publisher = Publisher.new(name: nil)
  #   expect(publisher.valid?).to be false
  # end
  # it 'is invalid with a blank name' do
  #   publisher = Publisher.new(name: '')
  #   expect(publisher.valid?).to be false
  # end
  # it 'valid with a name' do
  #   publisher = Publisher.new(name: "O'Reilly")
  #   expect(publisher.valid?).to be true
  # end

  it 'has a valid Factory' do
    expect(build(:publisher)).to be_valid
  end

end
