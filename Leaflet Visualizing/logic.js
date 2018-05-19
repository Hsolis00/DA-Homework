// perform an API call  to get station information. Call createMarkers when complete
d3.json("https://earthquake.usgs.gov/fdsnws/event/1/query.geojson?starttime=2018-04-19%2000:00:00&endtime=2018-05-19%2023:59:59&minmagnitude=2.5&orderby=time", createMarkers);

function createMarkers(response) {
  console.log(response);
  // pull the "stations" property off of response.data
  var features = response.data.features;

  // initialize an array to hold bike markers
  var earthquakeMarkers = [];

  // loop through the earthquakes array
  for (var index = 0; index < features.length; index++) {
    var feature = features[index];

    // for each earthquake, create a marker and bind a popup with the earthquake's location
    var earthquakeMarkers = L.marker([feature.lat, feature.lon])
      .bindPopup("<h3>" + station.place + "<h3><h3>Capacity: " + feature.capacity + "<h3>");

    // add the marker to the bikeMarkers array
    earthquakeMarkers.push(earthquakeMarkers);
  }

  // create a layer group made from the bike markers array, pass it into the createMap function
  createMap(L.layerGroup(earthquakeMarkers));
}


