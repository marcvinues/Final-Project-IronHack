
var styleArray = [
    {
      featureType: "all",
      stylers: [
       { saturation: -60 }
      ]
    },{
      featureType: "road.arterial",
      elementType: "geometry",
      stylers: [
        { hue: "#c10500" },
        { saturation: 500 }
      ]
    },{
      featureType: "poi.business",
      elementType: "labels",
      stylers: [
        { visibility: "off" }
      ]
    }
  ];

  var citymap = {
  sants: {
    center: {lat: 41.3792241, lng: 2.1374024},
    population: 2
  },
  santandreu: {
    center: {lat: 41.431766, lng: 2.1842723},
    population: 1
  },
  gracia: {
    center: {lat: 41.4069065, lng: 2.151588},
    population: 3
  },
  eixample: {
    center: {lat: 41.3858412, lng: 2.1565963},
    population: 9
  }
};

var map = new google.maps.Map(document.getElementById('map'), {
  zoom: 14,
  scrollwheel: false,
  styles: styleArray,
   disableDefaultUI: true,
  center: new google.maps.LatLng(41.390444,2.15868)
});

for (var city in citymap) {
    // Add the circle for this city to the map.
    var cityCircle = new google.maps.Circle({
      strokeColor: '#FF0000',
      strokeOpacity: 0.8,
      strokeWeight: 2,
      fillColor: '#FF0000',
      fillOpacity: 0.35,
      map: map,
      center: citymap[city].center,
      radius: Math.sqrt(citymap[city].population) * 100
    });
  }
