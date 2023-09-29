class Meal < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :orders, dependent: :destroy

  validates :name, presence: true

  def increase_amount
    increment!(:amount)
  end
end
