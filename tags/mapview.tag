<mapview>
  <p>Hello map</p>

  <div id="map"></div>



  <script>
    //var map;


    this.on("mount", function() {
      console.log("mount event fired")

      this.init()

      opts.callback(this)
    })

    this.on("initMap", function() {
      console.log("init map in mapview")
    })


    init() {
      console.log("init called")

      // set the map object
      this.initMap();

      this.getLocation();
    }

    getLocation() {
      console.log("getting the location")
      if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(this.showPosition);
      } else {
          console.log("Geolocation is not supported by this browser.");
      }
    }

    showPosition(position) {
        console.log("got the position")
        console.log(position.coords.latitude) // +
        console.log(position.coords.longitude)

        // we have the position so set the map coordinates
        //this.setMapCoordinates(position)
        this.map.panTo(new google.maps.LatLng(position.coords.latitude, position.coords.longitude));
    }

    initMap() {
      console.log("initMap")
      // this can only happen if google maps has loaded
      if (window.mapHasLoaded) {
        console.log("map has loaded")
        if(document.getElementById('map')) {
          console.log("map exists")
          this.map = new google.maps.Map(document.getElementById('map'), {
            center: {lat: 34.0500, lng: -118.2500},
            zoom: 12
          });
          console.log("map")
          console.log(this.map)
          //console.log(mapView)
        } else {
          console.log("map doesn't exist")
          setTimeout(initMap, 20)
        }
      } else {
        console.log("google maps failed to load")
        setTimeout(initMap, 20)
      }
    }


  </script>


</mapview>
