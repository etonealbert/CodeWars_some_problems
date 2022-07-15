func stat(_ strg: String) -> Array<Substring> {

  let every_result = strg.split(separator: ",")
  var dictionary: Dictionary<Substring, Int> = [:]
  //  var  : Array<String> = []

  for i in every_result
  {
    let kek = i.split(separator: "|")
    let sum =  Int(kek[0])!*360+Int(kek[1])!*60+Int(kek[2])!
    dictionary[i] =  sum
    }

    var newdictionary=dictionary.sorted { $0.1 < $1.1 }

    print(newdictionary)

  return every_result

}
var l = "01|15|59,01|47|16,01|17|20,01|32|34,02|17|17";
print(stat(l))