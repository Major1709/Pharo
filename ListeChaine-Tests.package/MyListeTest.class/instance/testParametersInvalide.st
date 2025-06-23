testing
testParametersInvalide
	mylist addNode: 0.75.
	mylist addNode: nil.
	mylist addNode: 10@20.
	mylist addNode: true.
	mylist addNode: 'ProfStef'.
	mylist addNode: 5.
	
	mylist removeNode: '55'. "retourne Les indices doivent être des entiers"
	mylist editNode: '5' at: true. "retourne Les indices doivent être des entiers"
	mylist researchNode: '8'. "retourne Les indices doivent être des entiers"
	mylist researchNode: -50. "index negatif"
	mylist removeNode: 50. "index hors list"
	
	mylist show.