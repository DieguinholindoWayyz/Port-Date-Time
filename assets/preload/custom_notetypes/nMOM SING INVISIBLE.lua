
function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'nMOM SING INVISIBLE' then
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); --No Anim
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_empty')
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties		
			end
		end
	end
	--debugPrint('Script started!')
end
