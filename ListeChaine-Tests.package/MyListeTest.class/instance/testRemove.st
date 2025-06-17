testing
testRemove
	mylist addNode: 0.75.
	mylist addNode: nil.
	mylist addNode: 10@20.
	mylist addNode: true.
	mylist addNode: 'ProfStef'.
	mylist addNode: 5.
	
	mylist removeNode: 3. " supprime le node à l'index 3 : 10@20"
	
	mylist show.