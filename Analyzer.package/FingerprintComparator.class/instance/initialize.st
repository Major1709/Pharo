initialization
initialize
   super initialize.
   fingerprints := OrderedCollection new.
   graph := Dictionary new.  "clé = fingerprint, valeur = enfants inclus"