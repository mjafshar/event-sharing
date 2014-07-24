var directionsShow;
var directionsTool = new google.maps.DirectionsService();
var map;

function initializeMap() {
  directionsShow = new google.maps.DirectionsRenderer();
  var chicago = new google.maps.LatLng(41.850033, -87.6500523);
  var mapOptions = {
    zoom:7,
    center: chicago
  }
  if (document.getElementById('map-canvas')) {
    map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
    directionsShow.setMap(map);
  }

}

function calcPath() {
  // var start = document.getElementById('start').value;
  // var end = document.getElementById('end').value;
  var start = $('#start_coords').data('info');
  var end = $('#end_coords').data('info');
  var request = {
      origin:start,
      destination:end,
      travelMode: google.maps.TravelMode.DRIVING
  };

  console.log(start);
  console.log(end);

  directionsTool.route(request, function(response, status) {
    if (status == google.maps.DirectionsStatus.OK) {
      directionsShow.setDirections(response);
    }
  });
}

// google.maps.event.addDomListener(window, 'load', initializeMap);

$(document).ready(function() {
  calcPath();
  initializeMap();
});


$(document).on('page:load', function() {
  calcPath();
  initializeMap();
});
