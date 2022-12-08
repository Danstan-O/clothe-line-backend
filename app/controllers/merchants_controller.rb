class MerchantsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def index
        merchants = Merchant.all
        render json: merchants, except: [:created_at, :updated_at], include: :merchandize
    end    

    def show
        merchant = Merchant.find_by(id: session[:merchant_id])

        if(!merchant.nil?)
            render json: merchant, status: 201
        else
            render json: {error: "Not authorized"}, status: 401
        end
    end

    def create
        merchant =  Merchant.create!(merchant_params)
        session[:merchant_id] = merchant.id

        render json: merchant, status: :created
    end

    private
    def record_invalid(invalid)
        # byebug
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def merchant_params
        params.permit(:name, :profile, :email, :password, :password_confirmation)
    end
end
