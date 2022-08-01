class ApplicationController < ActionController::Base
    include Pundit
    protect_from_forgery with: :exception
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

    def after_sign_in_path_for(resource)
        if resource.admin? || resource.operator?
            admin_path
        else
            authenticated_root_path
        end
    end

    private

    def user_not_authorized
        puts current_user.id, @current_user.admin?
        flash[:notice] = "Sorry, You Are Not Authorized To Do This"
        redirect_to(request.referrer || root_path)
    end
    
end
