func decodeMorse(_ morseCode: String) -> String {
  
  let kek = morseCode.components(separatedBy: "  ").map{ //iterator
    $0.components(separatedBy: " ").map { 
      MorseCode[$0, default: ""] 
    }.joined(separator: "")
  }.joined(separator: " ")
  
  
  return kek.trimmingCharacters(in: .whitespaces) //whitespacesAndNewlines
    // 
}

print(decodeMorse(".... . -.--   .--- ..- -.. ."))
//should return "HEY JUDE"