$(document).ready(function() {
    //Object constructor w/prototype function
    $.get(`${window.location.href}.json`, function(data, status){
        var venue = new Venue(data.name, data.city, data.state, data.id, data.events)
        console.log(data)

        $(".venue_details").append(venue.eventHeader);
        venue.genEventCards()
      })
  
  })
