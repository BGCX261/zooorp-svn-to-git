//init.lua
//Files that the client needs
AddCSLuaFile( "cl_init.lua" ) //download the cl_init.lua file
AddCSLuaFile( "shared.lua" ) //download the shared.lua file
//Files to include
include( 'shared.lua' ) //include shared.lua
//Sandbox error workaround. (line 40)
function GM:PlayerSpawn( ply )  //Changes the action when the player spawns (happens when the player spawns all the time)
    self.BaseClass:PlayerSpawn( ply )   
    ply:SetGravity( 0.75 )  
    ply:SetMaxHealth( 100, true )  
    ply:SetWalkSpeed( 325 )  
	ply:SetRunSpeed( 325 ) 
end
function new( ply )
	ply:Spectate( 5 ) 
	ply:SetTeam( 4 ) 
end 
function GM:PlayerInitialSpawn( ply )  // Initial spawn
	if ply:IsAdmin() then 
	zoo_team3( ply ) 
	else
	new( ply )
	RunConsoleCommand( "sb_start" ) 
	end
end
function GM:PlayerLoadout( ply ) //Player loadout
		if ply:Team() == 1 then //All these loops do is check for teams
		ply:Give( "weapon_physcannon" )
		ply:Give( "weapon_physgun" )
		ply:Give( "gmod_tool" )
		elseif ply:Team() == 2 then //All these loops do is check for teams
		ply:Give( "weapon_physcannon" )
		ply:Give( "weapon_physgun" )
		ply:Give( "gmod_tool" )
		ply:Give( "weapon_fiveseven" )
		ply:Give( "weapon_shotgun" )
		elseif ply:Team() == 3 then //All these loops do is check for teams
		ply:Give( "weapon_crowbar" )
		ply:Give( "weapon_pistol" )
		ply:Give( "weapon_smg1" )
		ply:Give( "weapon_frag" )
		ply:Give( "weapon_physcannon" )
		ply:Give( "weapon_crossbow" )
		ply:Give( "weapon_shotgun" )
		ply:Give( "weapon_357" )
		ply:Give( "weapon_rpg" )
		ply:Give( "weapon_ar2" )
		ply:Give( "gmod_tool" )
	    ply:Give( "gmod_camera" )
	    ply:Give( "weapon_physgun" )
	end
end
function zoo_team1( ply ) 
	ply:UnSpectate() 
	ply:SetTeam( 1 ) 
	ply:Spawn() 
	ply:PrintMessage( HUD_PRINTTALK, "Your a Citizen, " .. ply:Nick() "You have connected under the IP Address" .. ply:IPAddress() )
end //End the function.
concommand.Add( "zoo_team1", zoo_team1 ) //Add the console command
function zoo_team2( ply ) 
	ply:UnSpectate() 
	ply:SetTeam( 2 ) 
	ply:Spawn() 
	ply:PrintMessage( HUD_PRINTTALK, "Your a Police Officer, " .. ply:Nick() )
end //End the function.
concommand.Add( "zoo_team2", zoo_team2 ) //Add the console command
function zoo_team3( ply ) 
	ply:UnSpectate() 
	ply:SetTeam( 3 ) 
	ply:Spawn() 
	ply:PrintMessage( HUD_PRINTTALK, "Your a Admin, " .. ply:Nick() )
end //End the function.
concommand.Add( "zoo_team3", zoo_team3 ) //Add the console command