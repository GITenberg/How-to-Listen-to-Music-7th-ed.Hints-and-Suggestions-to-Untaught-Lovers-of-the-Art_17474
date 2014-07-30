\version "2.6.3"
\include "english.ly"

melody = \relative c {
  \clef bass 
  \key d \major 
  fs2( g4 a) | a( g fs e) | d2( e4 fs) | fs4. e8 e2^"etc."
}

\score {
  \new Staff \melody
  \midi { \tempo 4 = 150 }
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}

