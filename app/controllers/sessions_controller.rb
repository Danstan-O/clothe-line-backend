class SessionsController < ApplicationController
     # Buyers session
     def create
        buyer = Buyer.find_by(username: params[:username])
        if buyer&.authenticate(params[:password])
        session[:buyer_id] = buyer.id
        render json: buyer, status: :created
        else
            render json: { error: "Invalid username or password" }, status: :unauthorized
        end
    end

    # def create
    #     buyer = Buyer.find_by(username: params[:username])
    #     if(buyer&.authenticate(params[:password]))
    #         session[:buyer_id] = buyer.id
    #         render json: buyer, status: :created
    #     else
    #         render json: {errors: ["invalid email or password"]}, status: :unauthorized
    #     end
    # end

    def destroy
        if(session.include? :buyer_id)
            session.delete :buyer_id
            head :no_content
        else
            render json: {errors: ["buyer not logged in"]}, status: :unauthorized
        end
    end

    # Merchant session

    # def create
    #     merchant = Merchant.find_by(email: params[:email])
    #     if(merchant&.authenticate(params[:password]))
    #         session[:buyer_id] = merchant.id
    #         render json: merchant, status: :created
    #     else
    #         render json: {errors: ["invalid email or password"]}, status: :unauthorized
    #     end
    # end

    # def destroy
    #     if(session.include? :merchant_id)
    #         session.delete :merchant_id
    #         head :no_content
    #     else
    #         render json: {errors: ["Merchant not logged in"]}, status: :unauthorized
    #     end
    # end
end
