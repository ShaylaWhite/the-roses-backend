class Api::V1::GardensController < ApplicationController

    def index
   
       @gardens = Garden.all
       render json: @gardens
      end 

     def create
        @garden = Garden.new(graden_params)
         if @garden.save
            render json: @garden
         else
            render json: {error: 'Error creating account'}
        end 
    end 

     def show
        @garden = Garden.find(params[:id])
        render json: @garden
    end 
  

     def destroy
        @garden = Garden.find(params[:id])
         @garden.destroy 

     end 

   
     private
   
     def garden_params
        params.require(:garden).permit(:name, :feels, :date)
     end
end 
