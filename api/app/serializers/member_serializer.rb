class MemberSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :dob, :gender, :created_at, :updated_at
end
