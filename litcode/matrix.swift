
class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        for i in 0..<matrix.count{
            for j in matrix[i]{
                if j == target{
                    return true
                }
            }
        }
        return false
    }
}

var matrix = [[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]]
var target = 5

print(searchMatrix(matrix,target))