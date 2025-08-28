building - graph
isFingerprint: fp1 includedIn: fp2
   "Retourne true si tous les messages de fp1 sont contenus dans fp2"
   ^ fp2 asSet includesAll: fp1
