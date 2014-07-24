class RidesController < ApplicationController
  def index
  end

  def show
    @ride = Ride.find(params[:id])
    user = current_user
    @user_ride = UserRide.create(user_id: user.id, ride_id: @ride.id) || UserRide.where(user_id: user.id, ride_id: @ride.id).first
    @user_ride.rider_approval = true
    @user_ride.save
    @start = @ride.location_records.where(description: "Start").first.location
    @end = @ride.location_records.where(description: "End").first.location
    @requesting_riders = []
    @accepted_riders = []
    UserRide.where(ride_id: @ride.id, driver_approval: true).each do |user_ride|
      @accepted_riders << User.find(user_ride.user_id)
    end

    UserRide.where(ride_id: @ride.id, rider_approval: true, driver_approval: false).each do |user_ride|
      @requesting_riders << User.find(user_ride.user_id)
    end
  end

  def new
    if current_user
      @ride = Ride.new
      @friends = current_user.friends
    else
      redirect_to root_path
    end
  end

  def create

    @ride = Ride.new
    @ride.name = params[:ride][:name]
    @ride.start_time = params[:ride][:start_time]
    @ride.end_time = params[:ride][:end_time]
    @ride.driver = current_user
    @ride.total_cost = params[:ride][:total_cost]

    if @ride.save
      @ride.riders << current_user
      @user_ride = UserRide.find_by_ride_id(@ride.id)
      @user_ride.driver_approval = true
      @user_ride.rider_approval = true
      @user_ride.paid = true
      @user_ride.save
      @location_record = LocationRecord.create(
        location: params[:location][:start],
        description: 'Start',
        locatable: @ride
         )
      @location_record = LocationRecord.create(
        location: params[:location][:end],
        description: 'End',
        locatable: @ride
         )
      redirect_to user_path(current_user)
    else
      render 'new'
    end
  end

  def destroy
    @ride = Ride.find(params[:id])
    @ride.destroy
    redirect_to user_path(current_user)
  end

  def invite_riders
    @user = current_user
    @ride = Ride.find(params[:id])
    @invitables = []
    @user.friends.each do |f|
      @invitables << f unless @ride.riders.include?(f)
    end
  end

  def create_invite
    @user = current_user
    @ride = Ride.find(params[:id])
    params[:invitees].each do |i|
      @ride.riders << User.find(i)
      @user_ride = UserRide.where(ride_id: @ride.id, user_id: i).first
      @user_ride.driver_approval = true
      @user_ride.save
      puts "@@@@@@@@@@@@@@"
      puts "this is @user_ride.id"
      puts @user_ride.id
      puts @user_ride.driver_approval
      puts "@@@@@@@@@@@@@@"
    end
    redirect_to ride_path(@ride.id)
  end

  def request_ride

  end

end
