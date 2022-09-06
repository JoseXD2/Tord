function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'flipNoteBack' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_flipBack_assets'); --change texture
		end
	end
end
function  goodNoteHit(id, noteData, noteType, isSustainNote)
	if (noteType == 'flipNoteBack') and (isSustainNote == false) then
		 doTweenAngle('bruh', 'camera', 0, 0.2, 'linear') --when note pressed flips the camera back
playSound('THE SOUND', true) --change sound
characterPlayAnim('dad', 'THE ANIMATION', true) --change animation

	end
end
