func commonElementsInArray(stringArray: [String]) -> String {
	let dict = Dictionary(grouping: stringArray, by: {$0})
	let newDict = dict.mapValues({$0.count})
//	return newDict.sorted(by: {$0.value > $1.value}).first?.key ?? ""
}
print(commonElementsInArray(stringArray: ["red", "yellow", "red", "green"]))