class UserSerializer < ActiveModel::Serializer
  has_secure_password
  attributes :id, :username, :email, :password_digest
  has_many :decks
end
