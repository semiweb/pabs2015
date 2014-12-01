class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :address
  accepts_nested_attributes_for :address

  after_create :send_registration_confirmation_email


  def send_registration_confirmation_email
    UserMailer.registration_confirmation(self).deliver
  end
end
