func algor(_ n: Int,_ kata_kek: Int,_ id: Int) -> Int{
    var kata_count = kata_kek
    var kata_per_day : [Int] = []
        repeat{
            if(kata_per_day.count != 0)
            {
                let day_t = algor(kata_count, id, kata_kek)
                kata_count = kata_per_day.count+1 - day_t
            }
            kata_per_day.append(kata_count)
        }while ((kata_per_day.count) < n) 
    return Int(kata_per_day[kata_per_day.count - 1])
}



func algor2(_ n: Int,_ kata_kek: Int,_ id: Int) -> [Int]{
    var kata_count = kata_kek
    var kata_per_day : [Int] = []
        repeat{
            if(kata_per_day.count != 0)
            {
                let day_t = algor(kata_count, id, kata_kek)
                kata_count = kata_per_day.count+1 - day_t
            }
            
            kata_per_day.append(kata_count)
        }while ((kata_per_day.count) < n) 
    return kata_per_day
}


func ann(_ n : Int) -> [Int] {
    var answer = algor2(n, 1, 0)
     answer.insert( 1, at: 1)
    answer.removeLast()
    return answer
}

func john(_ n : Int) -> [Int] {
 var answer = algor2(n, 0, 1)
 answer.insert( 0, at: 1)
 answer.removeLast()
    return answer
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