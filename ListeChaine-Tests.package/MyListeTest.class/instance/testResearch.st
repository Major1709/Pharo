testing
testResearch
	mylist addNode: 0.75.
	mylist addNode: nil.
	mylist addNode: 10@20.
	mylist addNode: true.
	mylist addNode: 'ProfStef'.
	mylist addNode: 5.
	
	mylist researchNode: 0. "cherche le node à l'index 2: true"
	
	mylist show.