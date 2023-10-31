class Book < ApplicationRecord
  validates :title, presence: true
  validates :author_first_name, presence: true
  validates :author_last_name, presence: true

  # 
  def self.search(query)
    where("title LIKE ? OR author_first_name LIKE ? OR author_last_name LIKE ?",
          "%#{query}%", "%#{query}%", "%#{query}%")
  end
end
