# DayZ-Epoch-Map-Additions


How to add custom Map Content Client Side:

Open your init.sqf located in your missionfile. Search for call compile preprocessFileLineNumbers "\z\addons\dayz_code\system\mission\YOURMAP.sqf"; (Depends on what map your loading. This will add the tradercities)

Put that under the code from above:

call compile preprocessFileLineNumbers "yourMap.Addon.sqf";

Save and upload your Missionfile.
