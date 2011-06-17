// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

  $(document).ready(function() {
    $("#sortable").sortable();
  });

markers = new Array();

function placeMarker(map, location) {
	var marker = new google.maps.Marker({
		position: location,
		draggable: true,
		map: map
	});
	markers.push(marker);
	return marker;
}

function setMapOptions(map){
	// Coordinates
	lat = $('#latitude')[0];
	lng = $('#longitude')[0];
	if(lat != null && lng != null){
		lat = lat.value;
		lng = lng.value;
		position = new google.maps.LatLng(lat, lng);
		map.setOptions({center: position});
		var marker = new google.maps.Marker({
			position: position,
			map: map
		});
		// Draggable marker
		draggable = $('#draggable')[0];
		if(draggable != null){
			marker.setDraggable(true);
			// Set listener on dragend
			google.maps.event.addListener(marker, 'dragend', function(event) {
				position = marker.getPosition();
				lat = position.toString().replace("(","").split(", ")[0];
				lng = position.toString().replace(")","").split(", ")[1];
				$('#place_point_lat')[0].value = lat;
				$('#place_point_lng')[0].value = lng;
			});
		}
	}
	// Zoom
	zoom = $("#zoom")[0];
	if(zoom != null){
		map.setOptions({zoom: parseInt(zoom.value)});
	}
	// Disable Default UI
	disableDefaultUI = $('#disableDefaultUI')[0];
	if(disableDefaultUI != null){
		map.setOptions({disableDefaultUI: true});
	}
	// Add map listener for new place
	addNewPlace = $('#addNewPlace')[0];
	if(addNewPlace != null){
		google.maps.event.addListener(map, 'click', function(event) {
			position = event.latLng;
			// Limit to only 1 marker
			if(markers.length == 0){
				marker = placeMarker(map, position);
				lat = position.toString().replace("(","").split(", ")[0];
				lng = position.toString().replace(")","").split(", ")[1];
				$('#place_point_lat')[0].value = lat;
				$('#place_point_lng')[0].value = lng;
				
				// Set listener on dragend
				google.maps.event.addListener(marker, 'dragend', function(event) {
					position = marker.getPosition();
					lat = position.toString().replace("(","").split(", ")[0];
					lng = position.toString().replace(")","").split(", ")[1];
					$('#place_point_lat')[0].value = lat;
					$('#place_point_lng')[0].value = lng;
				});
			}
		});
    }
    
    places = $('#places')[0];
    if(places != null){
        places = $('.place');
        for (var i = 0; i < places.length; i++){
            var params = places[i].value.split("|");
            var myLatlng = new google.maps.LatLng(params[0],params[1]);
            
            marker = placeMarker(map, myLatlng);
            marker.setDraggable(false);
            marker.setTitle(params[2] + "\n\n" + params[3]);
            number = i+1;
            if(i<10){
                number = "0" + number;
            }
            marker.setIcon(new google.maps.MarkerImage("http://google-maps-icons.googlecode.com/files/green" + number +".png"));
        }
    }
}

function init() {
    var mapDiv = $('#map')[0];
        var options = {
        center: new google.maps.LatLng(50.061933, 19.937611),
        zoom: 10,
        disableDefaultUI: false,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        mapTypeControl: true
    };
    map = new google.maps.Map(mapDiv, options);
    setMapOptions(map);
}

window.onload = init;



