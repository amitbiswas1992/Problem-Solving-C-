
//   x has 5 candies & y has 3 candies, if we want to give x 2 more candies and y 3 more candies , then how many round need for y to exceed x candies. 

Solution: 

var x = 5 
var y = 3 

for i in 0...5 {
	x += 2 
	y += 3
	
	if x < y {
		print(y, x)
		break 
	}
}
