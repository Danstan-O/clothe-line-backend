class ReviewsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    # create a new review for a product
        def create
            review = Review.create!(review_params)
            review= review.find(params[:review_id])
            render json: review
        rescue ActiveRecord::RecordInvalid => e
            render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
        end
    
        # update an existing review.
    
        def update
            review = Review.find(params[:id])
            review.update!(review_params)
            render json: review
        rescue ActiveRecord::RecordInvalid => e
            render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
        end
    
        def destroy
            review = Review.find(params[:id])
            review.destroy
            head :no_content
        end
    
    
        private 
    
        def review_params
            params.permit(:comments)
        end
    
        def render_not_found_response
            render json: { error: "Review not found" }, status: :not_found
        end  
        
end
