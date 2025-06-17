testing
testEdit
	mylist addNode: 0.75.
	mylist addNode: nil.
	mylist addNode: 10@20.
	mylist addNode: true.
	mylist addNode: 'ProfStef'.
	mylist addNode: 5.
	
	mylist editNode: 38 at: 0. "modifie le node à l'index 3: 10@20 en 35"
	
	mylist show.
	