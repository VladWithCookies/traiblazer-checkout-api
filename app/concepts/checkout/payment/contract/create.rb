class Checkout::Payment::Contract::Create < Reform::Form
  property :credit_card, validates: { presence: true }, populate_if_empty: CreditCard do
    property :month, validates: { presence: true }
    property :year, validates: { presence: true }
    property :last_digits, validates: { presence: true }
    property :name, validates: { presence: true }
    property :cc_type, validates: { presence: true }
  end
end
