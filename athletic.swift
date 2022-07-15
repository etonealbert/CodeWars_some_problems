func stat(_ strg: String) -> String {

  let every_result = strg.split(separator: ",")
  var dictionary: Dictionary<Substring, Int> = [:]
  var final_string : String = "kfk"
  //  var  : Array<String> = []

  for i in every_result
  {
    let kek = i.split(separator: "|")
    let sum =  Int(kek[0])!*360+Int(kek[1])!*60+Int(kek[2])!
    dictionary[i] =  sum
    }

     let newdictionary=dictionary.sorted { $0.1 < $1.1 }

    final_string = "Range: \(String(newdictionary[0].0)) Average: \(String(newdictionary[(newdictionary.count/2-1)].0)) Median: \(String(newdictionary[newdictionary.count-1].0))" 

  return final_string

}
var l = "01|15|59,01|47|16,01|17|20,01|32|34,02|17|17";
print(stat(l))