class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :send_registration_confirmation_email


  def send_registration_confirmation_email
    UserMailer.registration_confirmation(self).deliver
  end
end
