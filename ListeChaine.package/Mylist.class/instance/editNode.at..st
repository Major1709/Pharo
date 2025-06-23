editing
editNode: data at: asInteger
| nodeActual i|
	nodeActual := nodeHead.
	i := 0.
	self empty.
   self indexValid: asInteger.
	[ nodeActual isNil ] whileFalse: [
	(asInteger == i) ifTrue: [ 
		nodeActual value: data.
		^ asInteger,' is edited'
		 ].
	nodeActual := nodeActual nextNode.
	i:= i + 1
	].
^ 'index not found'