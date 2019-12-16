func isAnagram(_ s: String, _ t: String) -> Bool {
			guard s.length == t.length else { return false }
			
			var map = [Character:Int]()
			s.forEach({ map[$0, default: 0] += 1 })
			t.forEach({ map[$0, default: 0] -= 1 })
			
			for (_,v) in map {
					if v != 0 { return false }
			}
			
			return true
	}