function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'flipNote' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_flipNote_assets'); --change the texture if you want
		end
	end
end
function  goodNoteHit(id, noteData, noteType, isSustainNote)
	if (noteType == 'flipNote') and (isSustainNote == false) then 
		 doTweenAngle('bruh', 'camera', 180, 0.2, 'linear') --when the note is pressed camera flips 180 degrees
playSound('THE SOUND', true) --change sound
characterPlayAnim('dad', 'THE ANIMATION', true) --change animation

	end
end
