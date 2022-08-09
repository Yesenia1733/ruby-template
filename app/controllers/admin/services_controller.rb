module Admin
  class ServicesController < AdminController
    before_action :set_service, only: [:id, :show, :edit, :update, :destroy]

    def index
      @services = Service.all.order(id: :asc)
    end
  
    def new
      @service = Service.new
    end

    def create
      @service = Service.new(service_params)
      respond_to do |format|
        if @service.save
          format.js
        else
          format.js
        end
      end
    end

    def show
    end

    def edit
    end

    def update
      respond_to do |format|
        if @service.update(service_params)
          format.js
        else
          format.js
        end
      end
    end

    def destroy
      @service.destroy
      respond_to do |format|
        format.js
      end
    end

    private

    def service_params
      params.require(:service).permit(:name, :amount)
    end

    def set_service
      @service = Service.find(params[:id])
    end
  end
end
