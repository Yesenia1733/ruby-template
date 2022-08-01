#File: app/policies/post_policy.rb
class PostPolicy < ApplicationPolicy
    attr_reader :current_user, :post
    
    def initialize(current_user, post)
        @current_user = current_user
        @post = post
    end
    
    def index?
        puts "*********"
        @current_user.admin?
    end

    def create?
        
    end
    
    def update?
        @current_user.admin?
    end
    
    def destroy?
        @current_user.admin?
    end
end