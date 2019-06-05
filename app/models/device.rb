class Device < ApplicationRecord
  # Direct associations

  belongs_to :company

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
