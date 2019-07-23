class DeckSerializer < ActiveModel::Serializer
  attributes :id, :title, :format, :image, :public, :user
  has_many :cards
  # has_one :user

  def user
    return { id: object.user.id, name: object.user.name}
  end
end
