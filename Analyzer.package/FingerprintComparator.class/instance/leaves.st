accessing
leaves
   "Retourne les fingerprints qui n'ont pas d'enfants"
   ^ (graph keys select: [:f | (graph at: f) isEmpty]) asArray

