testing
testCollectsApplicationMessages
   | ast visitor expected |
   ast := RBParser parseMethod: '
testBuildPublicationPage
   | builder |
   site rawPath: root.
   builder := site buildPublicationPage: self publicationPageName.
   self assert: builder sections isNotEmpty.
'.
   visitor := TestMessageCollectorVisitor new.
   ast acceptVisitor: visitor.

   expected := #(rawPath: buildPublicationPage: publicationPageName sections isNotEmpty).

   self assert: visitor messages asSortedCollection equals: expected asSortedCollection.
