class UserSerializer < ActiveModel::Serializer
  attributes :email, :google_id
end
