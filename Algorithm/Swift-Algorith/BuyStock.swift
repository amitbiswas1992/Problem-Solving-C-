func maxProfit(price: [Int])-> Int {
	
	if (price.count == 0 ){
		return 0
	}
	
	var sum = 0
	for i in 1..<price.count {
		if (price[i] > price[i - 1]){
			sum = sum + (price[i] - price[i - 1])
		}
	}
	return sum 
}
var arr = [1,3,4,6,7,9]
print (maxProfit(price : arr))