func ann(_ n : Int) -> [Int] {
    var kata_count = 1
        var kata_per_day : [Int] = []
        repeat{
            if(kata_per_day.count != 0){
                var john_t = john(kata_count)
                kata_count = kata_per_day.count+1 - john_t.removeLast()
            }
            kata_per_day.append(kata_count)
        }while ((kata_per_day.count) < n) 
    kata_per_day.insert( 1, at: 1)
    return kata_per_day
}
func john(_ n : Int) -> [Int] {
 var kata_count = 0
    var kata_per_day : [Int] = []
    repeat{
        if(kata_per_day.count != 0){
            var ann_t = ann(kata_count)
            kata_count = kata_per_day.count+1 - ann_t.removeLast()
        }
        kata_per_day.append(kata_count)
    }while ((kata_per_day.count) < n) 
    kata_per_day.insert( 0, at: 1)
  return kata_per_day
}

func sumJohn(_ n : Int) -> Int {
  
  return john(n).reduce(0, +)
}

func sumAnn(_ n : Int) -> Int {
  return ann(n).reduce(0, +)
}
var kek = john(11)
//kek.removeLast()

print("final = \(kek)")