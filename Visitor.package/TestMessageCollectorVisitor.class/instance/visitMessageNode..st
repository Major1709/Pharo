visiting
visitMessageNode: aMessageNode
   | sel recv |
   sel := aMessageNode selector.
   recv := aMessageNode receiver.

((self sunitSelectors includes: sel)
   or: [ (self basicOperators includes: sel)
   or: [ recv isSelfVariable or: [ recv isSuperVariable ] ] ])
   ifFalse: [ messages add: sel ].

   super visitMessageNode: aMessageNode.