\version "2.6.3"
\include "english.ly"

melody = \relative c '' {
  \time 3/4
  \key d \major
  \once \override TextScript #'padding = #2.5
  r4^\markup{ \italic {a. Gallina} } d8-. d-. d-. d-. | fs8.( a16) d,8-. d-. d-. d-. | d-.[ d-.] fs8.[( a16)] d,8-.[ d-.] \break
  fs8.( a16) fs8.( a16) d,8-. d-. | fs8.( a16) d,8-. d-. d-. d-. |fs8.( a16) d,8-. d-. d-. d-. \bar "||"
}

\score {
  \new Staff \melody
  \midi { \tempo 4 = 120}
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
