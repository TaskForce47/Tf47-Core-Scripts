class tf47_settings
{
  class radiosettings
  {
    /*
    	set settings for radiocommunication if mod taskforce radio arrowhead radio is used
    	RADIOCHANNEL 0: "Radio Communication - Public I"
    	RADIOCHANNEL 1: "Radio Communication - Event"
    	RADIOCHANNEL 2: "Radio Communication - DEV"
    */
    value = 1;
    type = "SCALAR";
  };
  class unitTracking
  {
    /*
    	set option to activate tracker for specific side and unittypes on map
    	TRACKING 1	-	will show markers on map
    	TRACKING 0	-	will not track units
    */
    value = 1;
    type = "SCALAR";
  };
  class unitTracking_sides
  {
    /*
    	set option to display tracking marker for specific side
    	possible options: WEST, EAST, INDEPENDENT, CIVILIAN
    */
    value[]=[WEST,EAST,INDEPENDENT,CIVILIAN];
    type = "ARRAY";
  };
  class unitTracking_types
  {
    /*
    	set option to display tracking marker for specific unittypes
    	possible options: "man", "car", "ship", "air", "static", "tank"
    */
    value[] = ["car","ship","air","static","tank"];
    type = "ARRAY";
  };
  class whitelist
  {
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
    value = 1;
    type = "SCALAR";
  };
  class basicReport
  {
    /*
      setting for automated report to gadget-log
      report to database is serversided.
      make sure you call [97,"lost mk18 found",""] call tf47_whitelist_fnc_reportToDatabase; via remoteexec
      more information in function description
      value = 0 off
      value = 1 on
    */
    value = 1;
    type = "SCALAR";
  };
  class respawnTickets
  {
    /*
      setting for integration of automated ticketmodification
      value = 0 off
      value = 1 on
    */
    value = 1;
    type = "SCALAR";
  };
};
#include "ACE\aceSettings.hpp"
