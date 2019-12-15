func reverse(_ x: Int) -> Int {		
	var num = x
	var sign = 1
	if num < 0{
		sign = -1
	}
	num = abs (num)
	var result : Int = 0
	while (num > 0){
		//split
		var lastDigit = num % 10
		num /= 10
		//merge
		result = result * 10 + lastDigit
	}
	let lowerLimit = -(1 << 31)
	let upperLimit = (1 << 31) - 1
	result = result * sign
	if lowerLimit <= result && result <= upperLimit{
		return result
	}
	return 0
}

var a = 1534236469
print (reverse (a))
