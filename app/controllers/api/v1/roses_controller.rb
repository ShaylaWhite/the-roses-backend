class Api::V1::RosesController < ApplicationController


     def index
        @roses = @garden.roses
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
            render json {error: `Rose did not add to Garden!`}

        end 
    end 

     def destroy
     end 

     private

     def pair_rose_to_garden
        @rose = Rose.find_by(params[:garden_id]
       #/api/v1/gardens/v1/roses
     end 
   
     def rose_params
        params.require(:rose).permit(:garden_id, :petals, :thorns, :water)
     end
end 
