import Foundation

func sysA(_ ticket: Double,_ n: Double) -> Double{
    return ticket*n
}

func sysB(_ card: Double,_ ticket: Double,_ perc: Double,_ day: Double) -> Double{
    
    return (ticket*(1-pow(perc,day-1)))/(1-perc) + card
}

func movie(card: Double, ticket: Double, perc: Double) -> Int {

    var day : Double = 0

    while(sysA(ticket, day) < ceil(sysB(card, ticket, perc, day))){
        day+=1
    }
  
  return Int(day)
}

print(sysB( 500,  15, 0.9, 43))

//print(movie(card: 500, ticket: 15, perc: 0.9))//should return 43