verifying
indexValid: asInteger	
	asInteger isInteger ifFalse: [
		^ 'Les indices doivent être des entiers' ].
	
	asInteger < 0 ifTrue: [ ^ 'L''index doit être supérieur ou égal à 0' ].

	
	