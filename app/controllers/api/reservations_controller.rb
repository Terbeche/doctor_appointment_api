module Api
    class ReservationsController < ApplicationController
      def index
        reservations = Reservation.all
        render json: reservations
      end
  
      def show
        reservation = Reservation.find(params[:id])
        render json: reservation
      end
  
      def create
        reservation = Reservation.new(reservation_params)
        if reservation.save
          render json: reservation, status: :created
        else
          render json: reservation.errors, status: :unprocessable_entity
        end
      end
  
      private
  
      def reservation_params
        params.require(:reservation).permit(:user_id, :doctor_id, :date, :city)
      end
    end
  end