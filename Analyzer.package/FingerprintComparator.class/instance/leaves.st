accessing
leaves
   ^ fingerprints select: [:fp | (graph at: fp ifAbsent: [#()]) isEmpty ].