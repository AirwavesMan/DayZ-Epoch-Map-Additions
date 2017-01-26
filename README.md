# DayZ-Epoch-Map-Additions

How to add custom Map Content Server Side Epoch 1.0.6:

- create a folder in your server.pbo called mapaddons or something like that and put the map addon file in there

- add the following line to the very bottom of your server_functions.sqf in the init folder of your server.pbo 

execVM "\z\addons\dayz_server\mapaddons\south-west-island.sqf";

- Save, pack and upload your server.pbo.


How to add custom Map Content Client Side Epoch 1.0.6:


 - Put the your custom Map Addon into your missionfile. For a better overview, create a folder called mapaddons or something like that and put the file in there.

 - Open your init.sqf located in your missionfile. Search for call compile preprocessFileLineNumbers "\z\addons\dayz_code\system\mission\YOURMAP.sqf"; (Depends on what map your loading. This will add the tradercities)

 - Put that line under the code from above:

    call compile preprocessFileLineNumbers "mapaddons\yourMap.Addon.sqf";
    
    E.g. for Panthera Bridge:
    
    call compile preprocessFileLineNumbers "mapaddons\bridgeVatra.sqf";

 - Save, pack and upload your Missionfile.
