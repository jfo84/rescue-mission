class User < ActiveRecord::Base
  has_many :questions
  has_many :answers, through: :questions

  validates :name, presence: true
end
