testing
testShowing
	mylist addNode: 0.75.
	mylist addNode: nil.
	mylist addNode: 10@20.
	mylist addNode: true.
	mylist addNode: 'ProfStef'.
	mylist addNode: 5.
	mylist show. "affiche les listes de node: 5 - 'ProfStef' - true - 10@20 - nil - 0.75"