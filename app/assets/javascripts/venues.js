$(document).ready(function() {
  //Object constructor w/prototype function
  function Venue(name, city, state) {
    this.name = name;
    this.city = city;
    this.state = state;
    this.html = function() {
      return `<card class="card" style="display: inline-block;width: 300px; height: 150px; margin: 20px; padding-top: 20px ">
                <h4>${name}</h4>
                <p>${city}, ${state}</p>
                <Button class="btn btn-primary" style="margin: -20px">Details</Button>
              </card>`
    }
  }

  $.get(`/venues.json`, function(data, status){
    data.forEach(element => {
      var venue = new Venue(element.name, element.city, element.state)
      $(".venues_list").append(venue.html);
    });
   

  })
    
   
  });
    $('#list_venues').on('click',() => getVenues());
      function getVenues() {
    // const track = new Venue("wow")
    // console.log(track.mood())
    // get JSON object and then store that game's state/status
    
    // $.ajax({
    //   url: '/venues',
    //   dataType: 'json',
    //   method: "GET"
    // })
    // .success(function(json) {
    //   console.log(json)
    // })
   

  }