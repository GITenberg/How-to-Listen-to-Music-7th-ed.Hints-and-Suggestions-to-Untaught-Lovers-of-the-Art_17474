\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \time 3/4
  \key d \minor
  c'2^\markup{ \italic { (b) } } ( d8 e) | f4-| r e-| | d-| r c | d-| r b-| | e2( f8 g) | a4^"etc." \bar ""
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