class BookingsController < ApplicationController
  def show
    puts "booking id = #{params[:id]}"
    @booking = Booking.find(params[:id])
  end

  def new
    puts "flight_id = #{params[:chosen_flight]}"

    @flight_obj = Flight.find(params[:chosen_flight])

    puts "@flight_obj.id = #{@flight_obj.id}"

    puts "number of passenger = #{params[:passenger_num]}"

    @passenger_num = params[:passenger_num].to_i

    puts "arrival = #{Airport.find(@flight_obj.arrival_airport_id).code}"
    puts "departure = #{Airport.find(@flight_obj.departure_airport_id).code}"
    puts "date = #{@flight_obj.start_datetime}"
    @arrival_airport =  Airport.find(@flight_obj.arrival_airport_id).code
    @departure_airport = Airport.find(@flight_obj.departure_airport_id).code
    @booking = Booking.new
    @booking.passengers.build
  end

  def create
    booking_params[:flight_id] = params[:flight_id]

    @booking = Booking.new(booking_params)
    puts "flight_id = #{booking_params[:flight_id]}"
    puts "new booking validation = #{@booking.valid?}"
    puts "booking errors = #{@booking.errors.full_messages}"
    puts "params (create) = #{booking_params.to_s}"


    if @booking.save
      redirect_to @booking
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def booking_params
    params.required(:booking).permit(:flight_id, :passengers_attributes => [:name, :email])
  end

end
