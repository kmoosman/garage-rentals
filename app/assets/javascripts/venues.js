$(document).ready(function() {
  //Object constructor w/prototype function
  // $(function () {
    $('form').submit(function(event) {
      //prevent form from submitting the default way
      event.preventDefault();
      console.log("submitted")
      var values = $(this).serialize();
      var posting = $.post('/venues', values);
 
      posting.done(function(data) {
        var venue = new Venue(data.name, data.city, data.state, data.id)
        $(".venues_list").append(venue.venueHtml);
  
      });
    });
  // });
  if($('.card').length) {
    console.log("I've already loaded venues to the dom")
   
  } else {
      fetchVenues()
    
        $('#texas').click(function(event) {
          //prevent form from submitting the default way
          event.preventDefault();
          $(".venues_list").empty()
          fetchVenues("Texas")
        });

        $('#utah').click(function(event) {
          //prevent form from submitting the default way
          event.preventDefault();
          $(".venues_list").empty()
          fetchVenues("Utah")
        });

        $('#cali').click(function(event) {
          //prevent form from submitting the default way
          event.preventDefault();
          $(".venues_list").empty()
          fetchVenues("California")
        });


    }

    
})

function fetchVenues(filter) {
    $.get(`/venues.json`, function(data, status){
      if (filter) {
        data.forEach(element => {
          if (element.state == filter) {
            var venue = new Venue(element.name, element.city, element.state, element.id)
            $(".venues_list").append(venue.venueHtml);
          }
          
        });
      } else {
        data.forEach(element => {
          var venue = new Venue(element.name, element.city, element.state, element.id)
          $(".venues_list").append(venue.venueHtml);
        })
      }
  })  
}

//constructo for venue
function Venue(name, city, state, id, events) {
  this.name = name;
  this.city = city;
  this.state = state;
  this.id = id
  this.events = events
  this.venueHtml = function() {
    return `<card class="card" style="display: inline-block;width: 300px; height: 150px; margin: 20px; padding-top: 20px ">
              <h4>${name}</h4>
              <p>${city}, ${state}</p>
              <a href="http://localhost:3000/venues/${id}"class="btn btn-primary" style="margin: -20px">Details</a>
            </card>`
  }
  
  this.eventHeader = function() {
        return `<h4>${name}</h4>
                <p>${city}, ${state}</p>`
      }
  this.genEventCards = function() {
        events.forEach(event => {
            console.log(event)
            var html = `<card class="card" style="display: inline-block; text-align: center; width: 300px; height: 150px; margin: 20px; padding-top: 20px ">
                            <h4 style="color: #4C6AC1">${event.event_name}</h4>
                            <p>${event.date}</p>
                            <a href="http://localhost:3000/venues/${id}"class="btn btn-primary" style="margin: -20px">Details</a>
                        </card>`
            $("#destinations").append(html)
                    
          });}
      
}
