class Order
  include Mongoid::Document

  field :created_at, type: DateTime
  field :type, type: String # Lease, purchase

  belongs_to :book

  embeds_one :lease
  embeds_one :purchase
end
