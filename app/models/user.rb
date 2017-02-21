class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,

	# @user = User.from_omniauth(request.env["omniauth.auth"])

  has_many :attendances
	has_many :events, through: :attendances

end
