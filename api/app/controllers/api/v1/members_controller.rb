module Api
  module V1
    class MembersController < ApplicationController

      def index
        render json: Member.all
      end

    end
  end
end

