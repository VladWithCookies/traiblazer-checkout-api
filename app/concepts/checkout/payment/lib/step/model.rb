class Checkout::Payment::Lib::Step::Model
  extend Uber::Callable

  def self.call(options, params:, **)
    options['model'] = Order.find(params[:order_id])
  end
end
