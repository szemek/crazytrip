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

function init() {
        var mapDiv = document.getElementById('map');
        var krakow = new google.maps.LatLng(50.061933, 19.937611);
        var options = {
            center: krakow,
            zoom: 10,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            mapTypeControl: true
        };
        var map = new google.maps.Map(mapDiv, options);

        google.maps.event.addListener(map, 'click', function(event) {
            point = event.latLng;
            x = point.toString().replace("(","").split(", ")[0];
            y = point.toString().replace(")","").split(", ")[1];
            placeMarker(map, point);
            addPoint(x, y);
        });

    }

window.onload = init;



