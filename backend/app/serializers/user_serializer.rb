class UserSerializer
  include JSONAPI::Serializer
  attributes :uuid, :email
end
