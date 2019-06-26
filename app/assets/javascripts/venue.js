$(document).ready(function() {
    //Object constructor w/prototype function
    function Venue(name, city, state, id) {
      this.name = name;
      this.city = city;
      this.state = state;
      this.id = id
      this.html = function() {
        return `
                  <h4>${name}</h4>
                  <p>${city}, ${state}</p>
                `
      }
    }
  console.log(window.location.href)
    $.get(`${window.location.href}.json`, function(data, status){
        var venue = new Venue(data.name, data.city, data.state, data.id)
        $(".venue_details").append(venue.html);
    //   data.forEach(element => {
       
        
    //   });
     
  
      })
  })