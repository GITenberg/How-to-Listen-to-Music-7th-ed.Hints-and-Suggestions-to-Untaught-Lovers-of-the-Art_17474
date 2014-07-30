\version "2.6.3"
\include "english.ly"

melody = \relative {
  \key bf \major
  \autoBeamOff r4\p^\markup {\italic {Largo.}} r8 g8 g'8. f16 ef8. d16| d4 \bar ""
}

\addlyrics { Be -- hold the Lamb of God! }

\score {
  \new Staff \melody
  \midi { \tempo 4 = 48}
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}