class AdventureSerializer < ActiveModel::Serializer
  attributes :id, :date, :location, :description, :img_url
end
