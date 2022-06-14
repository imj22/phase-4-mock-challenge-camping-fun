class CamperSerializer < ActiveModel::Serializer
  attributes :id, :name, :difficulty, :activities
  
  # has_many :activities
  # :( T________T
end
