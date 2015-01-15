<cfclient>
	<cfscript>
		
		/************************
		* Contact Client API
		************************/
		
		// Use this to load the first time the page is shown
		haveContactsBeenLoaded = false;
		
		$( '##contact' ).data( 'onPageLoad', function() {
			// First run
			if( !haveContactsBeenLoaded ) {
				loadContacts();
			}
		});
		
		// Search for contacts. Loads all by default
		// TODO: Pagination?
		function loadContacts( searchString ) {
			// Default search string
			if( typeof( searchString ) == 'undefined' ) { searchString = ''; }
			
			console.log( 'Searching for contacts matching "' + searchString + '".' );
			
			// Show waitscreen
			$.mobile.loading( "show", { text: "Hold on a sec while we fetch your contacts", textVisible: true } );
			
			// Clear previous results
			var contactListEL = $( '##contactList' );
			contactListEL.html( '' );
			contactListEL.listview("refresh");
			
			// Actually search for the contacts
			var contacts = cfclient.contacts.find( searchString, [ 'displayName' ] );
			
			// I have a lot of E-mail-only contacts w/no name. Ignore them
			contacts = contacts.filter( function( element ) {
				return element.displayName != null;
			});
			
			// Grab the first 200 just to limit how much junk we show. 
			// Doing this before the sort just so we get a smattering of alphanetical representation
			if( contacts.length > 200 ) {
				contacts = contacts.splice( 0, 200 );					
			}
							
			// Sort by name
			contacts.sort( function( a, b ) {
				return ( a.displayName.toLowerCase() > b.displayName.toLowerCase() ) ? 1 : ( ( b.displayName.toLowerCase() > a.displayName.toLowerCase() ) ? -1 : 0  );
			});
							
			// Loop over and display
			contacts.each( function( contact, index ) { 
				contactListEL.append( 
					'<li><a href="##contactDetail" onClick="editContact( ' + contact.id + ' )">' + contact.displayName + '</a></li>'
				);					 
			} );
			
			// Refresh the UI element
			contactListEL.listview("refresh");
			
			// Hide the loader 
			$.mobile.loading('hide');
			haveContactsBeenLoaded = true;
				
		}
		
		
		// Edit a contact
		function editContact( id ) {
			// Show waitscreen
			$.mobile.loading( "show", { text: "Loading...", textVisible: true } );
			
			// Grab form elements
			var contactDetailNameEL = $( '##contactDetailName' );
			var contactDetailNumberEL = $( '##contactDetailNumber' );
			var contactDetailEmailEL = $( '##contactDetailEmail' );
			
			// Wipe out any previous values
			contactDetailNameEL.val( '' );
			contactDetailNumberEL.val( '' );
			contactDetailEmailEL.val( '' );
			
			// Get the contact
			var contacts = cfclient.contacts.find( id, [ 'id' ] );
			
			// Double check we found one.
			if( !contacts.length > 0 ) {
				alert( "Couldn't find user ID " + id );
				$.mobile.loading('hide');
				$.mobile.back();
				return;					
			}
			
			// Grab first result-- hopefully there's only one.
			var contact = contacts[ 1 ];
			console.log( contact );
							
			// Show name
			if( contact.displayName ) {
				contactDetailNameEL.val( contact.displayName );
			}
			
			// Show first number
			if( contact.phoneNumbers && contact.phoneNumbers.length > 0 ) {
				contactDetailNumberEL.val( contact.phoneNumbers[ 1 ].value );	
			}
			
			// Show first E-mail
			if( contact.emails && contact.emails.length > 0 ) {
				contactDetailEmailEL.val( contact.emails[ 1 ].value );	
			}
			
			// Hide the loader 
			$.mobile.loading('hide');
		}
			
	</cfscript>
</cfclient>