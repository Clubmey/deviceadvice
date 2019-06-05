class Review < ApplicationRecord
  # Direct associations

  belongs_to :device

  belongs_to :commenter,
             :class_name => "User"

  # Indirect associations

  # Validations

end
