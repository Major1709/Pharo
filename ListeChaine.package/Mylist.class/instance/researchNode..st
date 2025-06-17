searching
researchNode: asInteger
	| nodeActual i|
	
	nodeActual := nodeHead.
	i := 1.
	
	asInteger isInteger ifFalse: [
		^ 'Les indices doivent être des entiers' ].
	
	[ nodeActual isNil ] whileFalse: [
	(asInteger == i) ifTrue: [ 
		^ nodeActual value asString,' index found'].
		nodeActual := nodeActual nextNode.
		i := i + 1 ].

^ 'index not Found'
