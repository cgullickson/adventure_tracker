class AdventureSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :location, :description, :img_url, :likes
end
