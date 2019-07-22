class CardSerializer < ActiveModel::Serializer
  attributes :id, :card_id, :is_commmander
  has_many :decks, through: :additions
end
