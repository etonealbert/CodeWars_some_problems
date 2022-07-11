// Take an integer n (n >= 0) and a digit d (0 <= d <= 9) as an integer.

// Square all numbers k (0 <= k <= n) between 0 and n.

// Count the numbers of digits d used in the writing of all the k**2.

// Call nb_dig (or nbDig or ...) the function taking n and d as parameters and returning this count.


func nbDig(_ n: Int, _ d: Int) -> Int {
  var square_ar : Array<Int> = []
  var num_count = 0
  for i in 0...n{
    square_ar.append(i*i)
  }
    for i in square_ar{
    let digits = String(i).compactMap {Int(String($0))} // split number in to array of digits
    for j in digits{
        if j == d{
            num_count+=1
            }
    }
}
    return num_count
}

print(nbDig(10,1))