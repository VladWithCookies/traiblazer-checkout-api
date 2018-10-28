class Address < ApplicationRecord
  enum kind: %i[shipping billing]

  belongs_to :addressable, polymorphic: true
end
