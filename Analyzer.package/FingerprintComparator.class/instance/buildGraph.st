building - graph
buildGraph
   | size |
   graph := Dictionary new.
   size := fingerprints size.

   "S'assurer que chaque fingerprint est une clé du graphe"
   fingerprints do: [:fp |
      graph at: fp ifAbsentPut: [ Set new ] ].

   "Construire les arêtes directes"
   1 to: size do: [:i |
      1 to: size do: [:j |
         i ~= j ifTrue: [
            | fp1 fp2 |
            fp1 := fingerprints at: i.
            fp2 := fingerprints at: j.
            (self isFingerprint: fp1 includedIn: fp2) ifTrue: [
               (graph at: fp1) add: fp2 ] ] ] ].

"Réduction transitive : supprimer les liens indirects"
		graph keysAndValuesDo: [:f :children |
   		| toRemove |
   			toRemove := (children flatCollect: [:c |
     		 (graph at: c ifAbsent: [#()])
        		 select: [:cc | children includes: cc ] ]) asSet.
   		children removeAll: toRemove ].

