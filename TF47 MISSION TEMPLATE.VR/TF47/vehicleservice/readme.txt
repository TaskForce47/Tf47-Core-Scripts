German -- Anleitung

Um einen Servicepoint zu erstellen musst du einen Trigger platzieren, diesen mit der Größe 5x5 als Owal und einer Höhe von -1,
so dass bei Size: A=5 B=5 C=-1 steht. Bei Typ kommt nichts rein, bei Activtion kommt "Blufor" rein und bei Activation Type "Present". Bei Repeatable einen Haken setzen und
man ist schon fast fertig. Bei Condition kommt folgendes rein:

Für Luftfahrzeuge:
Condition:
("Air" countType thislist  > 0) && count (thislist unitsBelowHeight 8) > 0;

Bei On Activation kommt folgendes rein:
{if(isPlayer _x) then {[[[thislist, thisTrigger, "Air"],"TF47\vehicleservice\vehicleserviceInit.sqf"],"execVM",(owner _x)] call BIS_fnc_MP;};} forEach thisList;

Für Bodenfahrzeuge:
Condition:
("LandVehicle" countType thislist  > 0) && count (thislist unitsBelowHeight 8) > 0;

Bei On Activation kommt folgendes rein:
{if(isPlayer _x) then {[[[thislist, thisTrigger, "LandVehicle"],"TF47\vehicleservice\vehicleserviceInit.sqf"],"execVM",(owner _x)] call BIS_fnc_MP;};} forEach thisList;


Das ist alles. Fertig.

Für Boot Service Points

Requiers: Object named Habor and Trigger on the same position as Habor
Trigger:
  Condition: "Ship" countType thislist  > 0;
  OnAct: nul = [thislist,30,1] execVM "tf47\vehicleService\vehicleServiceHabor.sqf";
param1 = no change
param2 = distance to habor
param3 = loadouts yes/no 1=yes 0=no
