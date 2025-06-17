removing
removeNode: asInteger

	| nodeActual nodeNext i |
	nodeActual := nodeHead.
	nodeNext := nodeActual nextNode.
	i := 1.
	
	asInteger isInteger ifFalse: [
		^ 'Les indices doivent être des entiers' ].

	asInteger == 0 ifTrue: [
			nodeHead := nodeNext.
			^ asInteger asString , ' index removed' ].

	[ nodeActual isNil ] whileFalse: [
			asInteger == i ifTrue: [
					nodeActual nextNode: nodeNext nextNode.
					^ asInteger asString , ' index removed' ].
			nodeActual := nodeNext.
			nodeNext := nodeNext nextNode.
			i := i + 1 ].

	^ 'index not Found'