// Remember the triangle of balls in billiards? To build a classic triangle (5 levels) you need 15 balls. With 3 balls you can build a 2-level triangle, etc.
import Foundation
func pyramid(_ balls: Int) -> Int{
    let kek : Double = (sqrt(8.0 * Double(balls) + 1.0) - 1.0)/2.0
  return Int(kek)
}

print("it equal = \(pyramid(4))")


