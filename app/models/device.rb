class Device < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # Direct associations

  belongs_to :category

  belongs_to :company

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
