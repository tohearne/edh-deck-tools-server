class DeckSerializer < ActiveModel::Serializer
  attributes :id, :title, :format, :public
  has_one :user
  has_many :cards
end
