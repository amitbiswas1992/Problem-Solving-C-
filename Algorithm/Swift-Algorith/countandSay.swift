func countAndSay(_ n: Int) -> String {
      guard n > 0 else { return "" }

      if n == 1 { return "1" }

      var str = "1"

      for _ in 2...n {
        let chars = Array(str)
        str = ""

        var i = 0
        while i < chars.count {
          var currentCount = 1

          // if we have repeated consecutive digits, count how many
          while (i + 1) < chars.count && chars[i] == chars[i+1] {
            currentCount += 1
            i += 1
          }

          str += "\(currentCount)\(chars[i])"
          i += 1
        }
      }

      return str
    }
