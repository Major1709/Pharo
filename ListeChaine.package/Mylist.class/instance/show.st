printing
show
	| nodeActual |
	nodeActual := nodeHead.
	self empty.
	[ nodeActual isNil ] whileFalse: [
			Transcript
				nextPut: 'valeur :';
				nextPut: nodeActual value asString;cr.
			nodeActual := nodeActual nextNode.		
	]