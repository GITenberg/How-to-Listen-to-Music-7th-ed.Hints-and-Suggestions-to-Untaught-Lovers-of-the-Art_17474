\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \time 2/4
  \key d \minor
  \fatText ef'4._ \markup { \italic "dolce." } (f16 g\p) | g8( f16 ef ef8) d16 c |
d4.( ef16 f) | f8( ef16 d)  d8( c16 bf)| ef4.^"etc." \bar ""
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
       \Staff \remove Time_signature_engraver
    }
  }
}
