printing
show
	| nodeActual |
	nodeActual := nodeHead.
	[ nodeActual isNil ] whileFalse: [
			Transcript
				nextPut: 'valeur :';
				nextPut: nodeActual value asString;cr.
			nodeActual := nodeActual nextNode.		
	]