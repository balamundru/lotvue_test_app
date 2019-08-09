class User < ApplicationRecord
  has_many :user_extra_datums, inverse_of: :user
  accepts_nested_attributes_for :user_extra_datums
  validates_presence_of :first_name, :last_name, :email
  validates_uniqueness_of :email, confirmation: {case_sensitive: false}
  has_many_attached :images
  
  def role
    Role.find(self.role_id).try(:name) if role_id?
  end
end
