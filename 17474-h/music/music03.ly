\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \key c \minor
  \time 3/4
  << s\ff^ \markup { \italic {Allegro.}} g'4-. >>
  g-. g-. | g2.-> | g4-. g-. g-. |
  g2.-> | g4-. g-. g-. | g2. | \stemUp bf4_( af) g | f2. |
  }

\score {
  \new Staff \melody
  \midi { \tempo 2 = 120}
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
