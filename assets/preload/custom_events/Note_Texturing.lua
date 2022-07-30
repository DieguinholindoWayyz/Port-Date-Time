function onCreatePost() -- this here only happens once, that's what creation does
	for i= 0, 3 do
		setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_dad') -- change 'playerStrums' to 'opponentStrums' for DD notes
    end
    for b = 0, getProperty('unspawnNotes.length') - 1 do
		if getPropertyFromGroup('unspawnNotes', b, 'mustPress') then -- change 'if' to 'if not' for DD notes
			setPropertyFromGroup('playerStrums', b, 'texture', 'NOTE_dad')
		end
	end
end

function onUpdatePost(elapsed)
	for i = 0, getProperty('unspawnNotes.length') - 1 do
		if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then -- same deal with b
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_dad');
		end
	end
end