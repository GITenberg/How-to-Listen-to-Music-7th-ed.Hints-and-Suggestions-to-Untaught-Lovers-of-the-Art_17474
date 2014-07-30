\version "2.6.3"
\include "english.ly"

melody = \relative {
  \time 3/4
  \autoBeamOff
  r4 g''8^\staccatissimo d^\staccatissimo e^\staccatissimo b^\staccatissimo | c^\staccatissimo g^\staccatissimo a16[( b]) c8 \bar ""
}

\addlyrics { Let us break their bonds a -- sun  -- der. }

\score {
  \new Staff \melody
  \midi { \tempo 4 = 130}
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}