class DoctorSerializer < ActiveModel::Serializer
    attributes :id, :name, :specialty
    has_many :reservations
end
  