// func ann(_ n : Int) -> [Int] {
//     var kata_count = 1
//         var kata_per_day : [Int] = []
//         repeat{
//             if(kata_per_day.count != 0){
//                 let t = kata_count
//                 kata_count = kata_per_day.count+1 - john(t).suffix(1)[0] 
//             }
//             kata_per_day.append(kata_count)
//         }while (kata_per_day.count < n) 
//     return kata_per_day
// }
// func john(_ n : Int) -> [Int] {
//  var kata_count = 0
//     var kata_per_day : [Int] = []
//     repeat{
//         if(kata_per_day.count != 0){
//             let t = kata_count
//             kata_count = kata_per_day.count+1 - ann(t).suffix(1)[0] 
//         }
//         kata_per_day.append(kata_count)
//     }while (kata_per_day.count < n) 
//   return kata_per_day
// }

var kek = [1, 2, 3,4 ,5 ].suffix(1)
print("final = \(type(of:kek[0]))")