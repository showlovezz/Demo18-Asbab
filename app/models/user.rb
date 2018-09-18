class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  # 一個使用者可以發表很多評論
	has_many :comments, dependent: :destroy
  
  def admin?
  	self.role == "admin"
  end
end
