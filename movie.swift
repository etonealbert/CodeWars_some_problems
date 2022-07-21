import Foundation

func sysA(_ ticket: Double,_ n: Double) -> Double{
    return ticket*n
}

func sysB(_ card: Double,_ ticket: Double,_ perc: Double,_ dy: Double) -> Double{
    var sum = card
    var price = ticket
    let day : Int = Int(dy)
    for _ in 0..<day{
        sum+=ceil(price*perc*100)/100
        price*=perc
    }
    return sum
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

print(movie(card: 500, ticket: 15, perc: 0.9))//should return 24