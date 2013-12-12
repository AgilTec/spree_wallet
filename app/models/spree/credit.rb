module Spree
  class Credit < StoreCredit
    # Negative Payment Mode cannot be set manually. They are reserved for some particular task internally.
    PAYMENT_MODE = { "#{Spree.t(:payment_refund)}" => -1, "#{Spree.t(:refund)}" => 0, "#{Spree.t(:bank)}" => 1 }
    
    include Spree::DisableNegativePaymentModeAndSetBalanceAbility    
    
    private
      def effective_amount(amount = amount)
        amount
      end
  end
end