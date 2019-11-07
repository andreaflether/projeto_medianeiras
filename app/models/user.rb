class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # belongs_to :pessoa
  # accepts_nested_attributes_for :pessoa

  enum role: [ :usuario, :admin, :superadmin ]

  def admin?
    ! usuario?
  end
end
