require 'rails_helper'

RSpec.describe Book, type: :model do
  # presence of validators
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:released_on) }
  it { should validate_presence_of(:author) }
  it { should validate_presence_of(:isbn_10) }
  it { should validate_presence_of(:isbn_13) }

  # length validators
  it { should validate_length_of(:isbn_10).is_equal_to(10) }
  it { should validate_length_of(:isbn_13).is_equal_to(13) }

  # uniquness validators
  it { should validate_uniqueness_of(:isbn_10) }
  it { should validate_uniqueness_of(:isbn_13) }

  it { should belong_to(:author) }
  it { should belong_to(:publisher) }

  it 'has a valid factory' do
    expect(build(:book)).to be_valid
  end
end
