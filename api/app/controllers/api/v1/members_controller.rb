module Api
  module V1
    class MembersController < ApplicationController

      def index
        render json: Member.all
      end

      def show
        render json: Member.find(params[:id])
      end
    end
  end
end
