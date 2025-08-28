testing
testIgnoresSUnitMessages
   | ast visitor |
   ast := RBParser parseMethod: '
testSimple
   self assert: 1 + 1 equals: 2.
   self deny: false.
   self should: [ 1 / 0 ] raise: ZeroDivide.
'.
   visitor := TestMessageCollectorVisitor new.
   ast acceptVisitor: visitor.

   self assert: visitor messages isEmpty.
