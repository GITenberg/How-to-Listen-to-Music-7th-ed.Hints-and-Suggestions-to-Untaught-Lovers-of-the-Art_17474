\version "2.6.3"
\include "english.ly"

melody = \relative c '' {
  \time 2/4
  \key bf \major
  \autoBeamOff
  d8 bf8 \bar ""
}

\addlyrics { Cuck -- oo!  }

\score {
  \new Staff \melody
  \midi { \tempo 4 = 92 }
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
    \context {
      \Staff
        \remove "Time_signature_engraver"
    }
  }
}
\paper { raggedright = ##t }
