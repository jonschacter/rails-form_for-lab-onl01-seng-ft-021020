class SchoolClassesController < ApplicationController
    def new
        @klass = SchoolClass.new
    end
  
    def create
        @klass = SchoolClass.new(klass_params)
        @klass.save
        redirect_to @klass
    end
  
    def show
        @klass = SchoolClass.find_by(id: params[:id])
    end
  
    def edit
        @klass = SchoolClass.find_by(id: params[:id])
    end
  
    def update
        @klass = SchoolClass.find_by(id: params[:id])
        @klass.update(klass_params)
        redirect_to @klass
    end

    private

    def klass_params
        params.require(:school_class).permit(:title, :room_number)
    end
end