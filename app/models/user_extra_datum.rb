class UserExtraDatum < ApplicationRecord
  belongs_to :user
  validates_presence_of :field_name, :field_value
  validates_uniqueness_of :field_name , scope: :user_id, confirmation: {case_sensitive: false}
end
