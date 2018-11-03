class Checkout::Shipping::Contract::Create < Reform::Form
  property :shipping_method, validates: { presence: true }, populate_if_empty: ShippingMethod do
    property :name, validates: { presence: true }
  end
end
