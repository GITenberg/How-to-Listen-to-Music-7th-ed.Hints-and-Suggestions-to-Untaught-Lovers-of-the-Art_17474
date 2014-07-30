\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \time 4/4
  \key d \major
  d'1~^\markup{ \italic { (c) } } | d2 e2 | fs2.( g8 a) | g4 g fs fs | e2 d2~ | d2^"etc."
}

\score {
  \new Staff \melody
  \midi { \tempo 2 = 150}
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
    \context {
       \Staff \remove Time_signature_engraver
    }
  }
}