require 'rails_helper'

RSpec.describe Member, :type => :model do
  describe "Valid member" do

    let(:member) { create(:member) }

    it "has a first name" do
      member.first_name = ""
      expect(member).not_to be_valid
    end

    it "has a last name" do
      member.last_name = ""
      expect(member).not_to be_valid
    end

    describe "date of birth" do
      it "must be present" do
        member.dob= nil
        expect(member).not_to be_valid
      end

      it "is in the past" do
        expect(Date.today > member.dob).to be true
        member.dob= 1.day.since # no future dates
        expect(member).not_to be_valid
      end
    end

    describe "gender" do
      it "can be male" do
        member.gender= "M"
        expect(member).to be_valid
      end

      it "can be female" do
        member.gender= "F"
        expect(member).to be_valid
      end

      it "cannot be a different gender" do
        member.gender= "X"
        expect(member).not_to be_valid
      end

      it "cannot be more than one character" do
        member.gender= "male"
        expect(member).not_to be_valid
      end
    end
  end
end
