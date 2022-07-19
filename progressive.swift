func removNb(_ n: Int) -> [(Int,Int)]
{
  var prod : Array<(Int,Int)> = []
  let sum : Int = (2+(n-1))*n/2
  for a in 2...n-1     
  {
    let  b = (sum-a)/(1+a)
    if ( (sum-a)%(1+a) == 0) && (b < n)
    {
      prod.append((a,b))
    }
  }
  return prod
}

print(removNb(26)) 	//return to numbers wich product
