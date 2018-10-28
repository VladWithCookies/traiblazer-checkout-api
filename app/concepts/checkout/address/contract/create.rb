class Checkout::Address::Contract::Create < Reform::Form
  property :billing_address, validates: { presence: true },
                             populate_if_empty: ->(_options) { Address.billing.new } do
    property :first_name, validates: { presence: true }
    property :last_name, validates: { presence: true }
    property :address_line_1, validates: { presence: true }
    property :address_line_2
    property :city, validates: { presence: true }
    property :country, validates: { presence: true }
    property :zip_code, validates: { presence: true }
  end

  property :shipping_address, validates: { presence: true },
                              populate_if_empty: ->(_options) { Address.shipping.new } do
    property :first_name, validates: { presence: true }
    property :last_name, validates: { presence: true }
    property :address_line_1, validates: { presence: true }
    property :address_line_2
    property :city, validates: { presence: true }
    property :country, validates: { presence: true }
    property :zip_code, validates: { presence: true }
  end
end
