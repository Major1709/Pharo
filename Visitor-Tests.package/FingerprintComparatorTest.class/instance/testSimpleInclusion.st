tests
testSimpleInclusion
   | comp f1 f2 f3 |
   f1 := #(rawPath:).
   f2 := #(rawPath: buildPublicationPage:).
   f3 := #(rawPath: buildPublicationPage: sections).

   comp := FingerprintComparator new.
   comp addFingerprint: f1.
   comp addFingerprint: f2.
   comp addFingerprint: f3.
   comp buildGraph.

   "On s’attend à ce que f1 soit inclus dans f2 et f3"
   self assert: ((comp graph at: f1) includes: f2).
   self assert: ((comp graph at: f1) includes: f3) not. "f1 → f2 → f3"

   "Les feuilles doivent être f3 seulement"
   self assert: comp leaves equals: { f3 }.