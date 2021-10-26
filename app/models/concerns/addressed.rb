module Addressed
  extend ActiveSupport::Concern

  included do
    validate :validate_author
  end

  def validate_author
    unless valid_b58_address(author)
      errors.add :author, "not a valid base58 address"
    end
  end

  def validate_receiver
    unless valid_b58_address(receiver)
      errors.add :receiver, "not a valid base58 address"
    end
  end

  private

  def valid_b58_address(addr)
    addr.present? &&
      addr.length >= 48 && addr.length <= 50 &&
      (addr =~ /^[1-9A-HJ-NP-Za-km-z]{48,50}$/).present?
  end
end
