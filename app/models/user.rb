class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
         validates :name, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true

  has_many :meals, foreign_key: :author_id, dependent: :destroy
  has_many :orders, foreign_key: :author_id, dependent: :destroy

  def admin?
    role == 'admin'
  end
end
