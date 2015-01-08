class Member < ActiveRecord::Base
  validates :first_name, :last_name, :dob, :gender, presence: true
  validates :gender, length: { is: 1 }
  validates :gender, inclusion: { in: %w(M F)}
  validates_date :dob, :before => lambda { 1.day.ago },
                                 :before_message => "must be before today"
end
