\version "2.6.3"
\include "english.ly"

melody = \relative c'' {
  \key bf \major
  \time 3/4
  \clef treble
  bf4. c8 d4 | \stemUp bf4 g4. \stemDown g'8 | f4 d4 bf'4 \break
  a4 g4. a8 | a4. g8 f8 ef8 | d4 c4. \stemUp bf8 | bf2.~ bf2. \bar ":|"
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
