\version "2.6.3"
\include "english.ly"

melody = \relative {
  \key d \major
  \autoBeamOff
  d'4 d8. e16 fs4 fs8 fs8 | d1 | fs2 r2 | r2 r4 a,4 | a2. a,4 | a2 \bar "||"
}

\addlyrics { Glo -- ry to God in the high -- est, and peace on earth. }

\score {
  \new Staff \melody
  \midi { \tempo 4 = 130 }
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}