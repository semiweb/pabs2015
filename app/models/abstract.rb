class Abstract < ActiveRecord::Base

  belongs_to :author, :class_name => 'User', :foreign_key => :author_id
  has_one :address, as: :parent
  accepts_nested_attributes_for :address

  validates :title, :text, :authors, presence: true

  after_create :send_copy_to_admins_email


  def send_copy_to_admins_email
    UserMailer.abstract_copy_to_admins(self).deliver
  end
end