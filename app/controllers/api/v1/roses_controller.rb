class Api::V1::RosesController < ApplicationController

   before_action :pair_rose_to_garden

     def index
      @roses = Rose.all
      render json: @roses
     end 


     def show 
        @rose = Rose.find(params[:id])
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

     def pair_rose_to_garden
        @rose = Rose.find_by(params[:garden_id]
       #/api/v1/garden/v1/roses
     end 
   
     def rose_params
        params.require(:rose).permit(:garden_id, :petals, :thorns, :water)
     end
end 
