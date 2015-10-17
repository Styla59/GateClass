--/////////////////////////////////////////
--///Name:		DRP-Function-Useful		///
--///Author:	Styla					///
--///Project:	Different-Roleplay      ///
--/////////////////////////////////////////
--/////////////////////////////////////////


--DRP-Function(useful)

--das Gate bewegen
function moveGate( gElement, gTime, drpX2, drpY2, drpZ2 )
	if (gElement) then
		name = getElementData(gElement, "name")
		moveObject ( gElement, gTime, drpX2, drpY2, drpZ2, 0, 0, 0, "OutBounce" )
	else
		outputDebugString ( "[DRP-Objects]The Element doesnt exists!", 1, 255, 0, 0 )
	end
end

--Ist die Distanz der beiden Pos unter 20?
function isDistance ( pX,pY,pZ, oX,oY,oZ )
	if getDistanceBetweenPoints3D ( pX,pY,pZ, oX,oY,oZ ) < 20 then
	return true
	end
end

--Frage so ab:
--if getDistanceElements ( pX,pY,pZ, oX,oY,oZ ) == true then
		

--Erstelle Objekt: createObject()
--Bewege es mit: moveGate( element, time, x, y, z ) --time = zeit der Bewegung, x,y,z = neue objekt koords


--Beispiel:
--[[
lspd = createObject( 980, 0, 0, 10 ) -- NORMALES Objekt erstellen
lspdstate = false

function lspdgatemove (thePlayer)
	local pX,pY,pZ = getElementPosition(thePlayer)
	local oX,oY,oZ = getElementPosition(lspd)
	if getDistanceElements ( pX,pY,pZ, oX,oY,oZ ) == true then --Distanzabfrage
		if lspdstate == false then
			moveGate( lspd, 2000, 0, 0, 5 ) --Hier die neue Funk nutzen
			lspdstate = true
		else
			moveGate( lspd, 2000, 0, 0, 10 ) --Hier auch!
			lspdstate = false
		end
	end
end
addCommandHandler("mv", lspdgatemove)
--]]
