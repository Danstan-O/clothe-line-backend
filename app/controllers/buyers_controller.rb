class BuyersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def index
        buyers = Buyer.all
        render json: buyers, except: [:created_at, :updated_at], include: :merchandize
    end  

    def

    def create
        buyer =  Buyer.create!(buyer_params)
        session[:buyer_id] = buyer.id

        render json: buyer, status: :created
    end

    def show
        buyer = Buyer.find_by(id: session[:buyer_id])

        if(!buyer.nil?)
            render json: buyer, status: 201
        else
            render json: {error: "Not authorized"}, status: 401
        end
    end

    private
    def record_invalid(invalid)
        # byebug
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def buyer_params
        params.permit(:username, :email, :password, :password_confirmation)
    end
end
