class MemberSerializer < ActiveModel::Serializer
  attributes :full_name, :dob, :gender

  def full_name
    "#{object.first_name} #{object.last_name}"
  end
end
