function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'flipNoteSide' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_flipSide_assets'); --change texture
		end
	end
end
function  goodNoteHit(id, noteData, noteType, isSustainNote)
	if (noteType == 'flipNoteSide') and (isSustainNote == false) then
		 doTweenAngle('bruh', 'camera', 90, 0.2, 'linear') --when note pressed the camera flips 90 degrees
playSound('THE SOUND', true) --change sound
characterPlayAnim('dad', 'THE ANIMATION', true) --change animation

	end
end
