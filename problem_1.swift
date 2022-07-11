func nbDig(_ n: Int, _ d: Int) -> Int {
  
  var square_ar : Array<Int> = []
  
  for i in 0...n
  {
    square_ar.append(i*i)
  }
  
  
  
  return square_ar.count
  // your code
}

print(nbDig(10,1))