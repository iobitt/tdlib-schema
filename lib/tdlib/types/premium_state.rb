module TD::Types
  # Contains state of Telegram Premium subscription and promotion videos for Premium features.
  #
  # @attr state [TD::Types::FormattedText, nil] Text description of the state of the current Premium subscription; may
  #   be empty if the current user has no Telegram Premium subscription.
  # @attr payment_options [Array<TD::Types::PremiumPaymentOption>] The list of available options for buying Telegram
  #   Premium.
  # @attr animations [Array<TD::Types::PremiumFeaturePromotionAnimation>] The list of available promotion animations
  #   for Premium features.
  class PremiumState < Base
    attribute :state, TD::Types::FormattedText.optional.default(nil)
    attribute :payment_options, TD::Types::Array.of(TD::Types::PremiumPaymentOption)
    attribute :animations, TD::Types::Array.of(TD::Types::PremiumFeaturePromotionAnimation)
  end
end
