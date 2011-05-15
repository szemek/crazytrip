// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

var markers = new Array();

function remove_fields(link) {
//  alert($(link).up(".fields"));
  $(link).previous("input[type=hidden]").value = "1";
  $(link).up(".fields").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).up().insert({
    before: content.replace(regexp, new_id)
  });
}

function addPoint(x, y){
            add_fields(document.getElementById('link'), "points", "<div class=\"fields\">\n  <p>\n  <label for=\"trip_points_x\">x<\/label><br />\n  <input id=\"trip_points_x\" value=\"" + x + "\" name=\"trip[points][x]\" size=\"30\" type=\"text\" /><br />\n  <label for=\"trip_points_y\">y<\/label><br />\n  <input id=\"trip_points_y\" value=\"" + y + "\" name=\"trip[points][y]\" size=\"30\" type=\"text\" /><br />\n  <input id=\"trip_points__destroy\" name=\"trip[points][_destroy]\" type=\"hidden\" value=\"false\" /><a href=\"#\" onclick=\"remove_fields(this); return false;\">remove<\/a>\n  <\/p>\n<\/div>\n"); return false;
        }

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
	lat = document.getElementById('latitude');
	lng = document.getElementById('longitude');
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
		draggable = document.getElementById('draggable');
		if(draggable != null){
			marker.setDraggable(true);
			// Set listener on dragend
			google.maps.event.addListener(marker, 'dragend', function(event) {
				position = marker.getPosition();
				y = position.toString().replace("(","").split(", ")[0];
				x = position.toString().replace(")","").split(", ")[1];
				document.getElementById('place_point_y').value = y;
				document.getElementById('place_point_x').value = x;
			});
		}
	}
	// Zoom
	zoom = document.getElementById('zoom');
	if(zoom != null){
		map.setOptions({zoom: parseInt(zoom.value)});
	}
	// Disable Default UI
	disableDefaultUI = document.getElementById('disableDefaultUI');
	if(disableDefaultUI != null){
		map.setOptions({disableDefaultUI: true});
	}
	// Add map listener for new place
	addNewPlace = document.getElementById('addNewPlace');
	if(addNewPlace != null){
		google.maps.event.addListener(map, 'click', function(event) {
			position = event.latLng;
			// Limit to only 1 marker
			if(markers.length == 0){
				marker = placeMarker(map, position);
				y = position.toString().replace("(","").split(", ")[0];
				x = position.toString().replace(")","").split(", ")[1];
				document.getElementById('place_point_y').value = y;
				document.getElementById('place_point_x').value = x;
				
				// Set listener on dragend
				google.maps.event.addListener(marker, 'dragend', function(event) {
					position = marker.getPosition();
					y = position.toString().replace("(","").split(", ")[0];
					x = position.toString().replace(")","").split(", ")[1];
					document.getElementById('place_point_y').value = y;
					document.getElementById('place_point_x').value = x;
				});
			}
		});
    }
}

function init() {
	var mapDiv = document.getElementById('map');
	var options = {
		center: new google.maps.LatLng(50.061933, 19.937611),
		zoom: 10,
		disableDefaultUI: false,
		mapTypeId: google.maps.MapTypeId.ROADMAP,
		mapTypeControl: true
	};
	var map = new google.maps.Map(mapDiv, options);
	setMapOptions(map);
}

window.onload = init;



