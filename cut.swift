func take(_ arr: [Int], _ n: Int) -> [Int] {
  
  var take : Array<Int> = []
  var counter = 0 
  
  
 for i in arr{
   take.append(i)
   counter+=1
   if n == counter{
    break
   }
 }

  
  return Array(arr.prefix(n))

}

print(take([0, 1, 2, 3, 5, 8, 13], 3))