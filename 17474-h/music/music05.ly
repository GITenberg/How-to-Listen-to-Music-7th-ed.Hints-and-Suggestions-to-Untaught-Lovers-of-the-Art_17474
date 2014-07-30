\version "2.6.3"
\include "english.ly"

\score {
\relative c'' <<
  \override Score.SpacingSpanner  #'spacing-increment = #2.5
  \new Staff {
  \key f \minor
  \time 12/8
  \partial 8*10 s8_\markup { \italic \bold {poco rit.} } r4 r8 r4 r8 <e g-.> <e g-.> <e g-.> | <g bf>4 \bar ""}
   \new Staff {
    \key f \minor
   \clef bass
   s8 df,,,8-. df-. df-. c4 r8 r4 r8 | r4  \bar "" }
>>

  \midi { \tempo 4 = 100 }
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
