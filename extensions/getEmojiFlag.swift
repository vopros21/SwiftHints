// source: https://apptractor.ru/info/articles/vse-chto-vy-hoteli-znat-o-flagah-v-emodzi-no-ne-znali-chto-vam-eto-nuzhno.html
func emojiFlag(countryCode: String) -> String? {
  guard countryCode.count == 2 else {
    return nil
  }
  // https://en.wikipedia.org/wiki/Regional_indicator_symbol
  let regionalIndicatorStartIndex: UInt32 = 0x1F1E6
  let alphabetOffset = UnicodeScalar(unicodeScalarLiteral: "A").value
  return String(countryCode
    .uppercased()
    .unicodeScalars
    .compactMap { UnicodeScalar(
      regionalIndicatorStartIndex + ($0.value - alphabetOffset)
    )}
    .map { Character($0) }
  )
}

emojiFlag(countryCode: "CA") // "🇨🇦"
