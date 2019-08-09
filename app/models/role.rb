class Role < ApplicationRecord
  validates_uniqueness_of :name, confirmation:{case_sensitive: false}
end
