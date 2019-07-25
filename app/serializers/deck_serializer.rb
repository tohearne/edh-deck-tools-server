class DeckSerializer < ActiveModel::Serializer
  attributes :id, :title, :format, :image, :public, :owner, :card_count
  has_many :cards
  # has_one :user

  def owner
    return { id: object.user.id, name: object.user.name}
  end

  def card_count
    return object.cards.inject(0) { |acc, card| acc + card.amount}
  end
end
