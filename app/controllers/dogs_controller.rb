class DogsController < ApplicationController
    before_action :set_dog, only: [:show, :edit, :update]

    def index
        @dogs = Dog.all
    end

    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.create(dog_params)
        byebug
        redirect_to dog_path(@dog)
    end

    def update
        @dog.update(dog_params)
        redirect_to @dog
    end

    private

    def set_dog
        @dog = Dog.find(params[:id])
    end

    def dog_params
        params.require(:dog).permit(:name, :breed, :age, employee_ids: [])
    end
end
