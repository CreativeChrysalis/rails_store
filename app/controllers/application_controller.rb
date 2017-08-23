class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

# make categoris accessible on all pages
    before_action :categories, :brands
# only run this before action if within a devise controller, ie creating a user
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    def configure_permitted_parameters
       devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
       devise_parameter_sanitizer.permit(:account_update, keys: [:role])
    end


      def categories
        @categories = Category.order(:name)
      end

      def brands
        @brands = Product.pluck(:brand).sort.uniq
      end

end
