\version "2.6.3"
\include "english.ly"

melody = \relative c'' {
\cadenzaOn
  a4 b c ds e f gs a
}

\score {
 \new Staff \melody
 \midi { \tempo 4 = 100}
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
    \context {
     \Staff
      \remove Time_signature_engraver
     }
  }
}
