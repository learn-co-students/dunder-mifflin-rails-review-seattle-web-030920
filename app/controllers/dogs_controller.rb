class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find(params[:id])
        @employees = @dog.employees
    end



    # private

    # def dog_params
    #     params.require(:dog).permit!
    # end


end
