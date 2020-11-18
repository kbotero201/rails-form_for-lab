class SchoolClassesController < ApplicationController
    
    def index
		@schoolclasses = SchoolClass.all
	end
    
    def show
        @schoolclass= SchoolClass.find(params[:id])
    end 
    
    def new 
        @schoolclass = SchoolClass.new
    end 

    def create 
        @schoolclass = SchoolClass.new(post_params)
        @schoolclass.save
        redirect_to student_path(@schoolclass)
    end 

    def edit
        @schoolclass= SchoolClass.find(params[:id])
    end 

    def update
        @schoolclass= SchoolClass.find(params[:id])
        @schoolclass.update(post_params)
        redirect_to student_path(@schoolclass)
    end 

    private 

    def post_params
        params.require(:school_class).permit(:title, :room_number)
      end 

end
