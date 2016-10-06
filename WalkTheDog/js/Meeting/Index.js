var Meeting = Meeting || {}

Meeting.Index = (function () {
    var radius;
    $(function () {
        $('#date').datetimepicker({
            locale: 'pl',
            format: 'YYYY-MM-DD HH:mm'
        });

        $("#zipCode").mask("99-999");

        initMap();

    });

    function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
            center: { lat: 52.2008737173322, lng: 20.982985496520996 },
            zoom: 13
        });
        var infoWindow = new google.maps.InfoWindow({ map: map });
        //Add listener
        google.maps.event.addListener(map, "click", function (event) {
            var latitude = event.latLng.lat();
            var longitude = event.latLng.lng();
            console.log(latitude + ', ' + longitude);
            if (radius != null) {
                radius.setMap(null);
            }
            radius = new google.maps.Circle({
                map: map,
                radius: 100,
                center: event.latLng,
                fillColor: '#777',
                fillOpacity: 0.1,
                strokeColor: '#AA0000',
                strokeOpacity: 0.8,
                strokeWeight: 2,
                draggable: true,    // Dragable
                editable: false      // Resizable
            });

            // Center of map
            map.panTo(new google.maps.LatLng(latitude, longitude));

            getAddress(event.latLng);

        }); //end addListener



        // Try HTML5 geolocation.
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function (position) {
                var pos = {
                    lat: position.coords.latitude,
                    lng: position.coords.longitude
                };

                infoWindow.setPosition(pos);
                infoWindow.setContent('Location found.');
                map.setCenter(pos);
            }, function () {
                handleLocationError(true, infoWindow, map.getCenter());
            });
        } else {
            // Browser doesn't support Geolocation
            handleLocationError(false, infoWindow, map.getCenter());
        }
    }

    function getAddress(latLng) {
        geocoder = new google.maps.Geocoder();

        geocoder.geocode({ 'latLng': latLng },
          function (results, status) {
              if (status == google.maps.GeocoderStatus.OK) {
                  if (results[0]) {
                      document.getElementById("address").innerHTML = results[0].formatted_address;
                  }
                  else {
                      document.getElementById("address").innerHTML = "No results";
                  }
              }
              else {
                  document.getElementById("address").innerHTML = status;
              }
          });
    }

    function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
                              'Error: The Geolocation service failed.' :
                              'Error: Your browser doesn\'t support geolocation.');
    }

})();