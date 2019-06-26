$(document).ready(function() {
  //Object constructor w/prototype function
  if($('.card').length) {
    console.log("I've already loaded venues to the dom")
  } else {
      function Venue(name, city, state, id) {
        this.name = name;
        this.city = city;
        this.state = state;
        this.id = id
        this.html = function() {
          return `<card class="card" style="display: inline-block;width: 300px; height: 150px; margin: 20px; padding-top: 20px ">
                    <h4>${name}</h4>
                    <p>${city}, ${state}</p>
                    <a href="http://localhost:3000/venues/${id}"class="btn btn-primary" style="margin: -20px">Details</a>
                  </card>`
        }
      }
    
      $.get(`/venues.json`, function(data, status){
        data.forEach(element => {
          var venue = new Venue(element.name, element.city, element.state, element.id)
          $(".venues_list").append(venue.html);
        });
      
    
        })
    
    }
})
