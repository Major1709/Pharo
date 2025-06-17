adding
addNode: data
	|new_node|
	new_node := Node new.
	new_node value: data.
	new_node nextNode: nodeHead.
	nodeHead := new_node.