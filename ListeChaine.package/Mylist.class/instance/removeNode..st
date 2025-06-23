removing
removeNode: asInteger

	| nodeActual nodeNext i |
	
	self empty.
   self indexValid: asInteger.

	nodeActual := nodeHead.
	nodeNext := nodeActual ifNotNil: [ nodeActual nextNode ].
	i := 0.

	asInteger = 0 ifTrue: [
			nodeHead := nodeNext.
			^ asInteger asString , ' index removed' ].

	[ nodeNext notNil ] whileTrue: [
			i := i + 1.
			asInteger = i ifTrue: [
					nodeActual nextNode: nodeNext nextNode.
					^ asInteger asString , ' index removed' ].
			nodeActual := nodeNext.
			nodeNext := nodeNext nextNode ].

	^ 'Index hors limites'