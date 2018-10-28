class Order < ApplicationRecord
  enum checkout_state: { cart: 0, address: 1, delivery: 2, payment: 3 }
  has_one :billing_address, -> { billing }, as: :addressable,
                                            dependent: :destroy,
                                            inverse_of: :addressable,
                                            class_name: Address.name,
                                            autosave: true

  has_one :shipping_address, -> { shipping }, as: :addressable,
                                              dependent: :destroy,
                                              inverse_of: :addressable,
                                              class_name: Address.name,
                                              autosave: true
  has_one :shipping_method
  has_one :credit_card
end
