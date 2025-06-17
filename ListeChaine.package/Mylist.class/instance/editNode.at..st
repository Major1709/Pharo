editing
editNode: data at: asInteger
| nodeActual i|
	nodeActual := nodeHead.
	i := 0.
	
	asInteger isInteger ifFalse: [
		^ 'Les indices doivent être des entiers' ].
	
	[ nodeActual isNil ] whileFalse: [
	(asInteger == i) ifTrue: [ 
		nodeActual value: data.
		^ asInteger,' is edited'
		 ].
	nodeActual := nodeActual nextNode.
	i:= i + 1
	].
^ 'index not found'