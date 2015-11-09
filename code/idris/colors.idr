module colors

import bool
import pair

data colors = red|yellow|green|cyan|blue|magenta

complement: colors -> colors
complement red = cyan
complement yellow = blue
complement green = magenta
complement cyan = red
complement blue = yellow
complement magenta = green

additive: colors -> bool
additive red = true
additive green = true
additive blue = true
additive _ = false

subtractive: colors -> bool
subtractive c = not (additive c)

complements: pair colors colors -> bool
complements (mkPair red cyan) = true
complements (mkPair yellow blue) = true
complements (mkPair green magenta) = true
complements (mkPair cyan red) = true
complements (mkPair blue yellow) = true
complements (mkPair magenta green) = true
complements (mkPair red _) = false
complements (mkPair yellow _) = false
complements (mkPair green _) = false
complements (mkPair cyan _) = false
complements (mkPair blue _) = false
complements (mkPair magenta _) = false

mixink: pair colors colors -> colors
mixink (mkPair yellow cyan) = green
mixink (mkPair yellow magenta) = red
mixink (mkPair cyan magenta) = blue
mixink (mkPair cyan yellow) = green
mixink (mkPair magenta yellow) = red
mixink (mkPair magenta cyan) = blue
