javad = User.create(name: 'javad'.capitalize, email: 'javad@javad.com', password: 'javad', password_confirmation: 'javad', has_car?: false)
harry = User.create(name: 'harry'.capitalize, email: 'harry@harry.com', password: 'harry', password_confirmation: 'harry', has_car?: true)
michael = User.create(name: 'michael'.capitalize, email: 'michael@michael.com', password: 'michael', password_confirmation: 'michael', has_car?: false)
greg = User.create(name: 'greg'.capitalize, email: 'greg@greg.com', password: 'greg', password_confirmation: 'greg', has_car?: true)
jake = User.create(name: 'jake'.capitalize, email: 'jake@jake.com', password: 'jake', password_confirmation: 'jake', has_car?: false)
jaime = User.create(name: 'jaime'.capitalize, email: 'jaime@jaime.com', password: 'jaime', password_confirmation: 'jaime', has_car?: true)
amelia = User.create(name: 'amelia'.capitalize, email: 'amelia@amelia.com', password: 'amelia', password_confirmation: 'amelia', has_car?: false)
ryan = User.create(name: 'ryan'.capitalize, email: 'ryan@ryan.com', password: 'ryan', password_confirmation: 'ryan', has_car?: true)
jay = User.create(name: 'jay'.capitalize, email: 'jay@jay.com', password: 'jay', password_confirmation: 'jay', has_car?: false)
johnathan = User.create(name: 'johnathan'.capitalize, email: 'johnathan@johnathan.com', password: 'johnathan', password_confirmation: 'johnathan', has_car?: true)
osagie = User.create(name: 'osagie'.capitalize, email: 'osagie@osagie.com', password: 'osagie', password_confirmation: 'osagie', has_car?: false)
jarrod = User.create(name: 'jarrod'.capitalize, email: 'jarrod@jarrod.com', password: 'jarrod', password_confirmation: 'jarrod', has_car?: true)
rohan = User.create(name: 'rohan'.capitalize, email: 'rohan@rohan.com', password: 'rohan', password_confirmation: 'rohan', has_car?: false)

ghopps = [javad, harry, michael, greg, jake, jaime, amelia, ryan, jay, johnathan, osagie, jarrod, rohan]
destinations = ["New York", "Los Angeles", "Chicago", "Houston", "Philadelphia", "Phoenix", "San Diego", "San Antonio", "Dallas", "Detroit", "San Jose", "Indianapolis", "Jacksonville", "San Francisco", "Columbus", "Austin", "Memphis", "Baltimore", "Charlotte", "Fort Worth", "Boston", "Milwaukee", "El Paso", "Washington", "Nashville-Davidson", "Seattle", "Denver", "Las Vegas", "Portland", "Oklahoma City", "Tucson", "Albuquerque", "Atlanta", "Long Beach", "Kansas City", "Fresno", "New Orleans", "Cleveland", "Sacramento", "Mesa", "Virginia Beach", "Omaha", "Colorado Springs", "Oakland", "Miami", "Tulsa", "Minneapolis", "Honolulu", "Arlington"]

san_francisco =
[
[37.7648287,-122.452712],
[37.7490556,-122.4344773],
[37.7500393,-122.4840656],
[37.7162374,-122.414285],
[37.724134,-122.4209454],
[37.7174806,-122.4619725],
[37.751624,-122.4593117],
[37.8047122,-122.4081963],
[37.7920974,-122.4029178]
]

new_york =
[
[40.7590615,-73.969231],
[40.8004355,-73.9422486],
[40.815665,-73.9480885],
[40.7870814,-73.8092395],
[40.8381335,-73.8582039],
[40.7870814,-73.8092395],
[40.815665,-73.9480885],
[40.8305019,-73.940918],
[40.8204264,-73.9871911],
[40.85166,-73.840934],
[40.8638528,-73.5323146]
]

chicago = [
[41.8899109,-87.6376566],
[41.8677395,-87.6270511],
[41.9738814,-87.6903942],
[41.9318204,-88.006109],
[41.8202997,-87.8087842],
[41.8942655,-88.1527993],
[42.3318145,-88.9952953]
]

washington_dc =
[
[38.8935965,-77.014576],
[38.930661,-77.0886],
[38.9320799,-77.0223758],
[38.854201,-76.966258],
[38.8405745,-76.9954474],
[38.8469485,-77.128849],
[38.981727,-77.1185768],
[39.0085992,-77.0178444],
[39.0085992,-77.0178444]
]

houston =
[
[29.817178,-95.4012915],
[29.6623309,-95.3206145],
[29.660633,-95.2286764],
[29.6687526,-95.5004895],
[29.865076,-95.3873649],
[29.790639,-95.110674],
[29.7313824,-95.3606554],
[29.7427795,-95.232755],
[29.6358874,-95.4384429],
[29.9446504,-96.265735],
[29.7806644,-95.9566609],
[30.1683335,-95.5238509],
[30.0632925,-95.2062839],
[29.7458199,-94.9527543]
]

san_antonio =
[
[29.4814305,-98.5144044],
[29.5320945,-98.5334487],
[29.498967,-98.7032741],
[29.5373816,-98.4209729],
[29.4765094,-98.4455284],
[29.478189,-98.4368218],
[29.4982774,-98.6150749],
[29.6971259,-98.4826189]
]

seattle =
[
[47.614848,-122.3358423],
[47.556309,-122.3028474],
[47.502927,-122.349586],
[47.5433705,-122.2707346],
[47.6475984,-122.5361625],
[47.669724,-122.121578],
[47.7927335,-122.3072681],
[47.812594,-122.192556],
[47.6080113,-122.0311651],
[47.6776212,-122.3871803],
[47.3856529,-122.205749],
[47.502927,-122.349586],
[47.4815449,-122.1935124]
]

miami =
[
[25.782324,-80.2310801],
[25.7757013,-80.2278733],
[25.8388744,-80.2337555],
[25.8139542,-80.1443065],
[25.6718539,-80.3470704],
[25.8186434,-80.3541725],
[26.1411125,-80.149973],
[26.103745,-80.4063059]
]

cities = [san_francisco,miami,new_york,san_antonio,houston,seattle,washington_dc]
flat_city = cities.flatten(1)



ghopps.each do |hopper|
  rand(10).times do |t|
    friend = ghopps.sample
    friendship = Friendship.new(user_id: hopper.id, friend_id: friend.id)
    if friendship.save
    else
    end
  end
end

ghopps.each do |hopper|
  dests = destinations.dup
  if hopper.has_car? == true
    10.times do |t|
      start_date = rand(1.years).from_now
      end_date = start_date + rand(8).days
      ride = Ride.create(name: dests.pop, start_time: start_date, end_time: end_date, total_cost: rand(5.0..50.0).round(2))
      hopper.provided_rides << ride
      ride.riders << hopper

      user_ride = UserRide.where(user_id: hopper.id, ride_id: ride.id).first
      user_ride.driver_approval = true
      user_ride.rider_approval = true
      user_ride.save
    end
  end
end

Ride.all.each do |r|
  sample_coord = flat_city.sample
  lat_lon = "POINT (#{sample_coord[1]} #{sample_coord[0]})"
  LocationRecord.create(
    location: lat_lon,
    description: 'Start',
    locatable: r
    )
  sample_coord = flat_city.sample
  lat_lon = "POINT (#{sample_coord[1]} #{sample_coord[0]})"
  LocationRecord.create(
    location: lat_lon,
    description: 'End',
    locatable: r
    )
end

rides = Ride.all

rides.each do |ride|
  # ride.riders << ride.driver
  hoppers = ghopps.dup
  hoppers.delete(ride.driver)
  rand(10).times do |t|
    hopper = hoppers.sample
    ride.riders << hopper
    hoppers.delete(hopper)
  end
end
