private func sec2str(_ sec: Int) -> String {
    var time : Array<String> = []
    time.append(String(sec/3600))        //hours
    time.append(String((sec%3600)/60))   //minuts
    time.append(String((sec%3600)%60))   //seconds
    for i in 0...(time.count-1){
        if time[i].count == 1 {
            time[i] = "0\(time[i])"
        } 
    }
    return time.joined(separator:"|")
}

private func str2sec(_ str: Substring) -> Int{
    let kek = str.split(separator: "|")
    return Int(kek[0])!*3600+Int(kek[1])!*60+Int(kek[2])!

}

func stat(_ strg: String) -> String {

    let every_result = strg.split(separator: ",")
    // var dictionary: Dictionary<Substring, Int> = [:]
    var seconds : Array<Int> = []
  

    for i in every_result
    {
    seconds.append(str2sec(i))
    }
    seconds = seconds.sorted()
    
    print(seconds)
    

    let range = sec2str(seconds[(seconds.count-1)]-seconds[0])
    let average = sec2str(seconds.reduce(0, +)/seconds.count)
    let median : String = seconds.count % 2 == 0 ? 
    sec2str(seconds[((seconds.count/2)-1+(seconds.count/2))/2]) 
    : sec2str(seconds[(seconds.count/2)]) 
  
   // print(sec2str(range))

  return "Range: \(range) Average: \(average) Median: \(median)"

}
var l = "01|15|59,01|47|16,01|17|20,01|32|34,02|17|17";
print(stat(l))