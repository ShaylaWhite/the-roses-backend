class Api::V1::RosesController < ApplicationController

    def new
        @roses = Roses.new

     end 

     def index
     end 

     def create
     end 
  

     def show 
     end 

     def destroy
     end 

     private
   
     def rose_params
        params.require(:rose).permit(:garden_id, :petals, :thorns, :water)
     end
end 
