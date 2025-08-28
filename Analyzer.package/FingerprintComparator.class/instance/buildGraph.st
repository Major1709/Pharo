building - graph
buildGraph

	| size |
	graph := Dictionary new.
	size := fingerprints size.

	"Construire les arêtes"
	1 to: size do: [ :i |
			1 to: size do: [ :j |
					i ~= j ifTrue: [
							| fp1 fp2 |
							fp1 := fingerprints at: i.
							fp2 := fingerprints at: j.
							(self isFingerprint: fp1 includedIn: fp2) ifTrue: [
								(graph at: fp1 ifAbsentPut: [ Set new ]) add: fp2 ] ] ] ].

"Réduction transitive"
		graph keysAndValuesDo: [:f :children |
   		| toRemove |
   		toRemove := Set new.
   		children copy do: [:c |   "👉 on parcourt une copie"
      		toRemove addAll: (
         		(graph at: c ifAbsent: [#()])
            		select: [:cc | children includes: cc ]) ].
  		 children removeAll: toRemove ].