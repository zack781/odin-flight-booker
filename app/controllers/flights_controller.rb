class FlightsController < ApplicationController
  def index
    puts "arrival = #{params[:arrival_airport]}"
    puts "departure = #{params[:departure_airport]}"
    puts "chosen_date = #{params[:flight_date]}"
    puts "number of passengers = #{params[:passenger_num]}"


    @airports = Airport.all
    @flights = Flight.all

    puts "----- Check arrivals = #{Airport.find(@flights.find(1).arrival_airport_id).code == params[:arrival_airport]}"


    puts "----- Check depatures = #{Airport.find(@flights.find(1).departure_airport_id).code == params[:departure_airport]}"

    flight_time = @flights.find(1).start_datetime

    puts "flight_time.year = #{flight_time.year}"

    if params[:flight_date].nil? == false
      chosen_date = params[:flight_date].delete("[").delete("]").split(",")
    end

    # puts "params[:flight_date] = #{chosen_date}"

    # puts "----- Check times = #{flight_time.year  == chosen_date[0].to_i}"

    @found_flights = []
    # Searching
    if !params[:arrival_airport].nil? && !params[:departure_airport].nil? && !params[:flight_date].nil? && !params[:passenger_num].nil?
      @flights.each do |flight|
        flight_time = flight.start_datetime
        if Airport.find(flight.arrival_airport_id).code == params[:arrival_airport] && Airport.find(flight.departure_airport_id).code == params[:departure_airport]
          puts "-------- FOUND FLIGHT --------"
          @found_flights << flight
        end

        puts "date = #{[flight_time.year, flight_time.month, flight_time.day]}"
        puts "arrival_airport = #{Airport.find(flight.arrival_airport_id).code}"
        puts "departure_airport = #{Airport.find(flight.departure_airport_id).code}"
      end
    end

    puts "found_flights = #{@found_flights}"

    @all_dates = []

    @flights.each do |flight|
      flight_time = flight.start_datetime
      if @all_dates.include?([flight_time.year, flight_time.month, flight_time.day]) == false
        @all_dates << [flight_time.year, flight_time.month, flight_time.day]
      end
    end
  end


end
