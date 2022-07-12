private func nod(_ v: Int,_ r: Int) -> Int{
    var a = v
    var b = r
    while ((a != 0) && (b != 0)){
        if (a > b){ a%=b}
        else{ b%=a}
    }
    return a+b
}

private func nok(_ a: Int,_ b: Int) -> Int{
    var min = 0
    if a<b {
        min = a
    } else {
        min = b
    }

   while (true){
        if ((min%a == 0) && (min%b == 0)){
            break
        }
        min+=1
   }
    return min
}

func convertFracts(_ l: [(Int, Int)]) -> [(Int, Int)] {
  
  var final : [(Int, Int)] = []
  var chlen : [(Int, Int)] = []
  var denom : Array<Int> = []
  var main_denom : Int = 1

for i in l{
        chlen.append((i.0/(nod(i.0,i.1)),i.1/(nod(i.0,i.1))))
    }
    //print(chlen)
 
  for i in chlen{
    denom.append(i.1)
  } 


    for i in denom{
        main_denom = nok(main_denom,i)
       // print(main_denom)
    }


    for i in chlen{

        let kek = main_denom/i.1
        final.append((kek*i.0,kek*i.1))
    }

    return  final
}

 print(convertFracts([(690, 1300), (87, 1310), (30, 40)]))