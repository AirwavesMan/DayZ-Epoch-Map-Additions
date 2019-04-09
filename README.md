# DayZ-Epoch-Map-Additions

How to add custom Map Content Server Side Epoch 1.0.6.1:

- create a folder in your server.pbo called mapaddons or something like that and put the map addon file in there

- add the following line to the very bottom of your server_functions.sqf in the init folder of your server.pbo

  E.g. for South West Island:
  
  execVM "\z\addons\dayz_server\mapaddons\south-west-island.sqf";

- Save, pack and upload your server.pbo.



How to add custom Map Content Client Side Epoch 1.0.6.1:


 - Put the your custom Map Addon into your missionfile. For a better overview, create a folder called mapaddons or something like that and put the file in there.

 - Open your init.sqf located in your missionfile. Search for call call compile preprocessFileLineNumbers "server_traders.sqf";

 - Put this line under the code from above:

    call compile preprocessFileLineNumbers "mapaddons\myMapAddon.sqf";
    
    E.g. for Panthera Bridge:
    
    call compile preprocessFileLineNumbers "mapaddons\bridgeVatra.sqf";

 - Save, pack and upload your Missionfile.
 
 - Your mapaddons will be loaded locally on server and on the client, so AIs still can see the buildings.
