//cl_init.lua
//Files to load
include( 'shared.lua' )
function set_team() //Call the setup function.
setup = vgui.Create( "DFrame" ) 
setup:SetPos( ScrW() / 2, ScrH() / 2 )
setup:SetSize( 300, 300 )
setup:SetTitle( "Please set up your charcter." )
setup:SetVisible( true )
setup:SetDraggable( true )
setup:ShowCloseButton( false ) 
setup:MakePopup() 
setup1 = vgui.Create( "DButton", setup ) 
setup1:SetPos( 20, 25 ) 
setup1:SetSize( 140, 40 ) 
setup1:SetText( "Citizen" ) 
setup1.DoClick = function() 
RunConsoleCommand( "zoo_team1" )
setup2 = vgui.Create( "DButton", setup ) 
setup2:SetPos( 180, 25 ) 
setup2:SetSize( 140, 40 ) 
setup2:SetText( "Police Officer" ) 
setup2.DoClick = function() 
RunConsoleCommand( "zoo_team2" )
end
end
end
concommand.Add( "zoo_start", set_team )