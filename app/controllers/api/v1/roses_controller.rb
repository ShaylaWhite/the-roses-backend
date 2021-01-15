class Api::V1::RosesController < ApplicationController

   before_action :set_garden

     def index
      @roses = Rose.all
      render json: @roses
     end 


     def show 
        @rose = @game.rose.find_by(params[:id])
        render json: @rose
     end 

     def create 
      @rose = @garden.roses.new(rose_params)
      if @rose.save
         render json: @rose
      else
         render json: {error: 'Error creating rose'}
      end 
   end

    def destroy 
      @rose = Rose.find(params["id"])
      @garden = Garden.find(@rose.garden_id)
      @rose.destroy
      render json: @garden
    end

     private

     def set_garden
        @garden = Garden.find(params[:garden_id])
     end 
   
     def rose_params
        params.require(:rose).permit(:garden_id, :petals, :thorns, :water)
     end

end 