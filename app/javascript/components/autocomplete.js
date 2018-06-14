function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var planeLocation = document.getElementById('plane_location');

    if (planeLocation) {
      var autocomplete = new google.maps.places.Autocomplete(planeLocation, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(planeLocation, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
