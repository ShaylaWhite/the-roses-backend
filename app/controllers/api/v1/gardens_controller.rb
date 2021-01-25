class Api::V1::GardensController < ApplicationController

    def index
   
       @gardens = Garden.all
       render json: GardenSerializer.new(@gardens)
      end 

     def create
        @garden = Garden.new(garden_params)
         if @garden.save
            render json: GardenSerializer.new(@garden)
         else
            render json: {error: 'Error creating account'}
        end 
    end 

     def show
        @garden = Garden.find(params[:id])
        render json: GardenSerializer.new(@garden)
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
