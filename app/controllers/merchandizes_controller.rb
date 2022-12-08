class MerchandizesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        merchandize = Merchandize.all
        render json: merchandize
    end

    def show
        merchandize = Merchandize.find(params[:id])
        render json: merchandize, except: [:created_at, :updated_at], include: :reviews
    end

    def create
        merchandize =  Merchandize.create!(merchandize_params)
        session[:merchandize_id] = merchandize.id

        render json: merchandize, status: :created
    end

    def update
        merchandize = Merchandize.find(params[:id])
        merchandize.update!(merchandize_params)
        render json: merchandize
    rescue ActiveRecord::RecordInvalid => e
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end

    def destroy
        merchandize = Merchandize.find(params[:id])
        merchandize.destroy
        head :no_content
    end



    private
    def merchandize_params
        params.permit(:name, :category, :image_url, :price, :merchant_id)
    end

end
