\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \time 3/4
  \key d \minor
  a''4.^\markup{ \italic { (a) } } \pp a,8 a4 |  d-| e-| f-| | e-| f-| g-| | \break
  f-| e-| d-| | c-| b-| a-| | gs-| a-| \stemUp b_\staccatissimo^"etc." |
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