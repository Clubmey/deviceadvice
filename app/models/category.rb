class Category < ApplicationRecord
  # Direct associations

  has_many   :devices,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
