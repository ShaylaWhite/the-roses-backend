class Api::V1::GradensController < ApplicationController

    def index
       @gardens = Graden.all
       render json: @gardens
     end 

     def create
        @garden = Garden.new(graden_params)
         if @garden.
            render json: @garden
         else
            render json {error: `Garden could not be created!`}
         end 
    end 

     def show
        @garden = Garden.find(params[:id])
        render json: @garden
    end 
  

     def destroy
     end 

   
     private
   
     def garden_params
        params.require(:garden).permit(:name, :feels, :date)
     end
end 

end 