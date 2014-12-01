class Abstract < ActiveRecord::Base

  belongs_to :author, :class_name => 'User', :foreign_key => :author_id
  has_one :address

end