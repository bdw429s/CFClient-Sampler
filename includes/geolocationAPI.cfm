<cfclient>
	<cfscript>
		
		/************************
		* Geolocation Client API
		************************/
		
		function getGeolocation() {
			
			$.mobile.loading( "show", { text: "Scanning for lifeforms...", textVisible: true } );
			
			
		    var geoOptions = cfclient.geolocation.getOptions();
		    geoOptions.enableHighAccuracy = $( '##highaccuracy' ).prop('checked');
		    cfclient.geolocation.setOptions( geoOptions );
		    
			var geoData = cfclient.geolocation.getCurrentPosition();
			$( '##geolocationData' ).html( 
				'<b>Lat:</b> ' + geoData.coords.latitude + '<br>
				<b>Long:</b> ' + geoData.coords.longitude + '<br>
				<br>
				mind = blown, right? <br>'
			);
			
			$.mobile.loading('hide');
		}
			
	</cfscript>
</cfclient>   