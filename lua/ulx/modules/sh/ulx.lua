local CATEGORY_NAME = "Cake's Stuff"

function ulx.arrest( calling_ply, target_ply ,time)

target_ply:arrest(time)
ulx.fancyLogAdmin( calling_ply, "#A arrested #T for #i seconds", target_ply,time )
end
local arrest = ulx.command( CATEGORY_NAME, "ulx arrest", ulx.arrest, "!arrest" )
arrest:addParam{ type=ULib.cmds.PlayerArg }
arrest:addParam{ type=ULib.cmds.NumArg }
arrest:defaultAccess( ULib.ACCESS_ADMIN )
arrest:help( "Force arrest the target." )


function ulx.unarrest( calling_ply, target_ply)
target_ply:unArrest()
ulx.fancyLogAdmin( calling_ply, "#A unarrested #T", target_ply )
end
local unarrest = ulx.command( CATEGORY_NAME, "ulx unarrest", ulx.unarrest, "!unarrest" )
unarrest:addParam{ type=ULib.cmds.PlayerArg }
unarrest:defaultAccess( ULib.ACCESS_ADMIN )
unarrest:help( "Force unarrest the target." )

function ulx.forceunown( calling_ply, target_ply)
target_ply:keysUnOwnAll( )
ulx.fancyLogAdmin( calling_ply, "#A force uowned all of #T doors", target_ply )
end
local forceunown = ulx.command( CATEGORY_NAME, "ulx forceunown", ulx.forceunown, "!forceunown" )
forceunown:addParam{ type=ULib.cmds.PlayerArg }
forceunown:defaultAccess( ULib.ACCESS_ADMIN )
forceunown:help( "Force forceunown the target." )

