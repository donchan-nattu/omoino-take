class Bamboo
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :content, :string

  validates :content, presence: true, length: { maximum: 280 }
end
