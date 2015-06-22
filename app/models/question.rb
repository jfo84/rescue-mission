class Question < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :title, length: { minimum: 40 }
  validates :description, presence: true, uniqueness: true
  validates :description, length: { minimum: 150 }
end
