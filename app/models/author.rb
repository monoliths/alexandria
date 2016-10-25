class Author < ApplicationRecord
    validates :family_name, presence: true
    validates :given_name, presence: true
    has_many :books
end
