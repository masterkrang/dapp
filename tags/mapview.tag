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
      opts.callback(this)
    })

    this.on("initMap", function() {
      console.log("init map in mapview")
    })

  </script>


</mapview>
