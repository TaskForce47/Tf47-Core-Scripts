/*
	set settings for radiocommunication if mod taskforce radio arrowhead radio is used
	RADIOCHANNEL 0: "Radio Communication - Public I"
	RADIOCHANNEL 1: "Radio Communication - Event"
	RADIOCHANNEL 2: "Radio Communication - DEV"
*/

#define RADIOCHANNEL 1

/*
	set option to activate tracker for specific side and unittypes on map
	TRACKING true	-	will show markers on map
	TRACKING false	-	will not track units
*/

#define TRACKING true

/*
	set option to display tracking marker for specific side
	possible options: WEST, EAST, INDEPENDENT, CIVILIAN
*/

#define SIDES	[WEST,EAST,INDEPENDENT,CIVILIAN]

/*
	set option to display tracking marker for specific unittypes
	possible options: "man", "car", "ship", "air", "static", "tank"
*/

#define TYPES	["car","ship","air","static","tank"]

/*
  active option to track and enforce tf47 whitelst with reporting feature to tf47 gadget
  CAUTION: extDB3 needed for extensioncalls
  WHITELIST true - whitelist enforcing active
  WHITELIST false - whitelist enforcing not active

  if you want to use the whitelist functions make sure you have an active connection to a database
  furthermore player characters need following initialisation:

  nothing 0
  helo 1
  jet 2
  tank 3
  builder 4
  jtfc 5

  this setVariable ["tf47_whitelist_specialCharacter",0];
*/

#define WHITELIST true
