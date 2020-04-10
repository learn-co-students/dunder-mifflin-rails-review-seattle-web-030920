class EmployeesController < ApplicationController
    before_action :set_employee, only: [:show, :edit, :update]

    def index
        @employees = Employee.all
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.new(employee_params)
        if @employee.save
            redirect_to @employee
        else
            flash[:messages] = @employee.errors.full_messages
            render :new
        end
    end

    def update
        if @employee.update(employee_params)
            redirect_to @employee
        else
            flash[:messages] = @employee.errors.full_messages
            render :edit
        end
    end

    private

    def set_employee
        @employee = Employee.find(params[:id])
    end

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
    end
end
