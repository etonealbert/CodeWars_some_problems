private func tohex(_ r: Int) -> String{
    let re = r > 255 ? 255 : (r < 0 ? 0 : r)
    let hex_r = String(re, radix: 16)
    return hex_r.count == 1 ? "0"+hex_r.uppercased() : hex_r.uppercased()
}

func rgb(_ r: Int, _ g: Int, _ b: Int) -> String {

    return (tohex(r)+tohex(g)+tohex(b))
}

print(rgb(255, 255, 255)) 
