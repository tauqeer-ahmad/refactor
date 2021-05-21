class Invoice < ApplicationRecord
  has_many :payments, dependent: :destroy

  def invoice_total=(value)
    amount_in_cents = (value.to_r * 100).to_i
    super(amount_in_cents)
  end
end
