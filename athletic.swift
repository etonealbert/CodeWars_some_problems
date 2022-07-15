func stat(_ strg: String) -> Array<String> {

  var every_result : Array<String> = strg.components(separatedBy: ",")
  var second_res : Array<Int> = []
    var kek : Array<String> = []

  for i in every_result{
     kek+=i.split(separator: "|")
    //second_res.append(Int(kek[0])*360+Int(kek[1])*60+Int(kek[2]))


  }

  return kek

}
var l = "01|15|59,01|47|16,01|17|20,01|32|34,02|17|17";
print(stat(l))