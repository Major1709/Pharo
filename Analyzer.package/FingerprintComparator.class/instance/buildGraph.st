building - graph
buildGraph
   | size |
   size := fingerprints size.
   1 to: size do: [:i |
      1 to: size do: [:j |
         i ~= j ifTrue: [
            | fp1 fp2 |
            fp1 := fingerprints at: i.
            fp2 := fingerprints at: j.
            (fp2 asSet includesAll: fp1) ifTrue: [
               (graph at: fp1 ifAbsentPut: [OrderedCollection new])
                  add: fp2 ]]]].