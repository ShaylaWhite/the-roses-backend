class Api::V1::RosesController < ApplicationController

   before_action :set_garden

     def index
      @roses = Rose.all
      render json: RoseSerializer.new(@roses)
   end 


     def show 
        @rose = @garden.rose.find_by(params[:id])
        render json: RoseSerializer.new(@rose)
      end 

     def create 
      @rose = @garden.roses.new(rose_params)
      if @rose.save
         render json: RoseSerializer.new(@rose)
      else
         render json: {error: 'Error creating rose'}
      end 
   end

    def destroy 
      @rose = Rose.find(params["id"])
      @garden = Garden.find(@rose.garden_id)
      @rose.destroy
      render json: RoseSerializer.new(@garden)
    end

     private

     def set_garden
        @garden = Garden.find(params[:garden_id])
     end 
   
     def rose_params
        params.require(:rose).permit(:garden_id, :petals, :thorns, :water)
     end

end 