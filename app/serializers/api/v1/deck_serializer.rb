class Api::V1::DeckSerializer < ActiveModel::Serializer
  attributes :id, :cards, :deal, :begin 
end
