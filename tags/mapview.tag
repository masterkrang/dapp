<mapview>
  <p>Hello { hi }</p>

  <div id="map"></div>



  <script>
    var map;

    this.hi = "map"

    // initMap() {
    //
    // }

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
      this.getLocation();
    }

    getLocation() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(this.showPosition);
        } else {
            x.innerHTML = "Geolocation is not supported by this browser.";
        }
    }

    showPosition(position) {
        console.log("got the position")
        console.log(position.coords.latitude) // +
        console.log(position.coords.longitude)

        // we have the position so set the map coordinates
        this.setMapCoordinates(position)
    }

    setMapCoordinates(position) {

    }

    function mapsLoaded() {
      console.log("maps loaded")
      if(document.getElementById('map')) {
        this.map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -34.397, lng: 150.644},
          zoom: 8
        });
        console.log("map" + map)
        console.log(mapView)
      } else {
        console.log("map doesn't exist")
        setTimeout(mapsLoaded, 20)
      }

    }


  </script>


</mapview>
