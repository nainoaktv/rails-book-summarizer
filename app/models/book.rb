class Book < ApplicationRecord
  validates :title, presence: true
  validates :author_first_name, presence: true
  validates :author_last_name, presence: true
end
