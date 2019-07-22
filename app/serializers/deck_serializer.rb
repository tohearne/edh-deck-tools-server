class DeckSerializer < ActiveModel::Serializer
  attributes :id, :title, :format, :public, :user
  has_many :cards

  def owner
    return object.user.id
  end
end
