module TD::Types
  # Represents a user.
  #
  # @attr id [Integer] User identifier.
  # @attr first_name [TD::Types::String] First name of the user.
  # @attr last_name [TD::Types::String] Last name of the user.
  # @attr username [TD::Types::String] Username of the user.
  # @attr phone_number [TD::Types::String] Phone number of the user.
  # @attr status [TD::Types::UserStatus] Current online status of the user.
  # @attr profile_photo [TD::Types::ProfilePhoto, nil] Profile photo of the user; may be null.
  # @attr emoji_status [TD::Types::EmojiStatus, nil] Emoji status to be shown instead of the default Telegram Premium
  #   badge; may be null.
  #   For Telegram Premium users only.
  # @attr is_contact [Boolean] The user is a contact of the current user.
  # @attr is_mutual_contact [Boolean] The user is a contact of the current user and the current user is a contact of
  #   the user.
  # @attr is_verified [Boolean] True, if the user is verified.
  # @attr is_premium [Boolean] True, if the user is a Telegram Premium user.
  # @attr is_support [Boolean] True, if the user is Telegram support account.
  # @attr restriction_reason [TD::Types::String] If non-empty, it contains a human-readable description of the reason
  #   why access to this user must be restricted.
  # @attr is_scam [Boolean] True, if many users reported this user as a scam.
  # @attr is_fake [Boolean] True, if many users reported this user as a fake account.
  # @attr have_access [Boolean] If false, the user is inaccessible, and the only information known about the user is
  #   inside this class.
  #   Identifier of the user can't be passed to any method except GetUser.
  # @attr type [TD::Types::UserType] Type of the user.
  # @attr language_code [TD::Types::String] IETF language tag of the user's language; only available to bots.
  # @attr added_to_attachment_menu [Boolean] True, if the user added the current bot to attachment menu; only available
  #   to bots.
  class User < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :first_name, TD::Types::String
    attribute :last_name, TD::Types::String
    attribute :username, TD::Types::String
    attribute :phone_number, TD::Types::String
    attribute :status, TD::Types::UserStatus
    attribute :profile_photo, TD::Types::ProfilePhoto.optional.default(nil)
    attribute :emoji_status, TD::Types::EmojiStatus.optional.default(nil)
    attribute :is_contact, TD::Types::Bool
    attribute :is_mutual_contact, TD::Types::Bool
    attribute :is_verified, TD::Types::Bool
    attribute :is_premium, TD::Types::Bool
    attribute :is_support, TD::Types::Bool
    attribute :restriction_reason, TD::Types::String
    attribute :is_scam, TD::Types::Bool
    attribute :is_fake, TD::Types::Bool
    attribute :have_access, TD::Types::Bool
    attribute :type, TD::Types::UserType
    attribute :language_code, TD::Types::String
    attribute :added_to_attachment_menu, TD::Types::Bool
  end
end
