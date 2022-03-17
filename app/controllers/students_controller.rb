class StudentsController < ApplicationController
        rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        render json: Student.all
    end

    def show
        student = Student.find(params[:id])
        render json: student
    end

    private

    def render_not_found_response
        render json: { error: "Student not found" }, status: :not_found
    end
    
end
