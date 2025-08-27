tests
testIndependentFingerprints
   | comp f1 f2 |
   f1 := #(foo).
   f2 := #(bar).

   comp := FingerprintComparator new.
   comp addFingerprint: f1.
   comp addFingerprint: f2.
   comp buildGraph.

   "Pas d’inclusion"
   self assert: (comp graph at: f1 ifAbsent: #()) isEmpty.
   self assert: (comp graph at: f2 ifAbsent: #()) isEmpty.

   "Les deux sont des feuilles"
   self assert: comp leaves asSet equals: { f1. f2 } asSet.