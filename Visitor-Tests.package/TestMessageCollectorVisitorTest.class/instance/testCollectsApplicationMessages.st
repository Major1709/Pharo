testing
testCollectsApplicationMessages
   | ast visitor |
   ast := RBParser parseMethod: '
testBuildPublicationPage
   | builder |
   site rawPath: root.
   builder := site buildPublicationPage: self publicationPageName.
   self assert: builder sections isNotEmpty.
'.
   visitor := TestMessageCollectorVisitor new.
   ast acceptVisitor: visitor.

   self assert: visitor messages asArray sort equals:
      #(rawPath: buildPublicationPage: publicationPageName sections isNotEmpty) sort.