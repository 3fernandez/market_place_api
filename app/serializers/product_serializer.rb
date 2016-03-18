class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :price, :published
  # Include this, to pass user object to the product json response
  has_one :user
end
