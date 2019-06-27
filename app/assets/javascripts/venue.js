$(document).ready(function() {
    //Object constructor w/prototype function
    function Venue(name, city, state, id, events) {
      this.name = name;
      this.city = city;
      this.state = state;
      this.id = id
      this.events = events
      this.header = function() {
          
        return `<h4>${name}</h4>
                <p>${city}, ${state}</p>`
      }
      this.generateCards = function() {
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

  
    $.get(`${window.location.href}.json`, function(data, status){
        var venue = new Venue(data.name, data.city, data.state, data.id, data.events)
        console.log(data)

        $(".venue_details").append(venue.header);
        venue.generateCards()
      })
    
 

      
  })
