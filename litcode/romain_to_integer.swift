
func romanToInt(_ s: String) -> Int {
    let keys : Dictionary<Character, Int> = ["I" : 1 , "V" : 5, "X" : 10, "L" : 50, 
                                             "C" : 100, "D" : 500, "M" : 1000] 
    let str = Array(s)
    var digit_array : Array<Int> = []
    var sum = 0
    var previos_digit = 0
   for i in str{
        digit_array.append(keys[i]!)
   }
   digit_array.reverse()
    for i in digit_array{
        if previos_digit>i {
            sum-=i
        } else {
            sum+=i
        }
        previos_digit=i
    }
    return sum
} 

print(romanToInt("MCMXCIV"))