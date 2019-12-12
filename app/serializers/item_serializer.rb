class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :size, :category, :zip_code
  belongs_to :user
end
