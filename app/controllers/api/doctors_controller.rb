module Api
    class DoctorsController < ApplicationController
      def index
        doctors = Doctor.all
        render json: doctors
      end
  
      def show
        doctor = Doctor.find(params[:id])
        render json: doctor
      end
  
      def create
        doctor = Doctor.new(doctor_params)
        if doctor.save
          render json: doctor, status: :created
        else
          render json: doctor.errors, status: :unprocessable_entity
        end
      end
  
      def destroy
        doctor = Doctor.find(params[:id])
        doctor.destroy
        head :no_content
      end
  
      private
  
      def doctor_params
        params.require(:doctor).permit(:name, :specialty)
      end
    end
  end