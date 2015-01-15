<cfclient>
	<cfscript>
	
		/************************
		* Accelerometer Client API
		************************/
		
		// For calculating deltas
		prevAccelerometerData = null;
		
		XBoxEL = $( '##XBox' );
		YBoxEL = $( '##YBox' );
		ZBoxEL = $( '##ZBox' );
		XValEL = $( '##XValue' );
		YValEL = $( '##YValue' );
		ZValEL = $( '##ZValue' );
		
		
		function onAccelerometer( data ) {
			var sensitivity = 20-$( '##sensitivity' ).val();
			
			if( prevAccelerometerData != null ) {

				// Calculate the deltas but only keep them if they're above the threshold
				var deltaX = ( abs( prevAccelerometerData.x - data.x ) > sensitivity ? prevAccelerometerData.x - data.x : 0 );
				var deltaY = ( abs( prevAccelerometerData.y - data.y ) > sensitivity ? prevAccelerometerData.y - data.y : 0 );
				var deltaZ = ( abs( prevAccelerometerData.z - data.z ) > sensitivity ? prevAccelerometerData.z - data.z : 0 );

				// Show the raw numbers
				XValEL.text( parseFloat( data.x ).toFixed( 2 ) );
				YValEL.text( parseFloat( data.y ).toFixed( 2 ) );
				ZValEL.text( parseFloat( data.z ).toFixed( 2 ) );

				// Set the color of each box based on it's change in acceleration
				XBoxEL.css( 'background-color', getXYZColor( deltaX ) );
				YBoxEL.css( 'background-color', getXYZColor( deltaY ) );
				ZBoxEL.css( 'background-color', getXYZColor( deltaZ ) );
		
			}
			
			// Save this for next time
			prevAccelerometerData = data;
		}

		// Turn a positive number blue and negative red.
		// Blue gets bluer the higher the number, and red gets redder the lower the number
		// Upper and lower bounds are -20 and 20. 
		function getXYZColor( delta ) {
			// How dark -- an decimal betwen 0 and 255
			var darkness = 255 - int( Math.min( 255 * ( abs( delta ) / 20 ), 255 ) );
			//Convert to hex and pad if neccessary
			var darknessHex = darkness.toString(16);
			darknessHex = ( darknessHex.length==1 ? '0' + darknessHex : darknessHex );
			
			if(delta > 0) {
				// Blue stays FF, red and green are adjusted up and down accordingly 
				return '##' + darknessHex + darknessHex +'FF';
			} else if(delta < 0) {
				// Red stays FF, green and blue are adjusted up and down accordingly
				return '##FF' + darknessHex + darknessHex;
			} else {
				return 'white';
			}
		}
					
		// Set polling interval
		opt = cfclient.accelerometer.getOptions();
		opt.frequency = 200;
		cfclient.accelerometer.setOptions( opt );
		
		function startAccelerometer() {
			console.log('start watching accelerometer');
			accelerometerWatchId = cfclient.accelerometer.watch( onAccelerometer );
		}
		
		function stopAccelerometer() {
			console.log('stop watching accelerometer');
			cfclient.accelerometer.clearWatch( accelerometerWatchId );				
		}

		// When the Accelerometer page is loaded, start tracking
		$( '##accelerometer' ).data( 'onPageLoad', function() {
			// Don't put cfclient code in here, or "cff_callback27 is not defined"
			startAccelerometer();
		});
		
		// When the Accelerometer page is left, stop tracking
		$( '##accelerometer' ).data( 'onPageUnLoad', function() {
			stopAccelerometer();
		});
			
	</cfscript>
</cfclient>