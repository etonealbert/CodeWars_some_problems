import Foundation

func sysA(_ ticket: Double,_ n: Double) -> Double{
    return ticket*n
}

func sysB(_ card: Double,_ ticket: Double,_ perc: Double,_ day: Double) -> Double{
    
    return (ticket*(1-pow(perc,day)))/(1-perc)-ticket + card
}

func movie(card: Double, ticket: Double, perc: Double) -> Int {

    var day : Double = 0

    while(sysA(ticket, day) < ceil(sysB(card, ticket, perc, day))){
        day+=1
    }
    print("sysA = \(sysA(ticket, day))")
    print("sysB = \(ceil(sysB(card, ticket, perc, day)))")
  return Int(day)
}

//print(sysB( 500,  15, 0.9, 43))

print(movie(card: 100, ticket: 10, perc: 0.95))//should return 24