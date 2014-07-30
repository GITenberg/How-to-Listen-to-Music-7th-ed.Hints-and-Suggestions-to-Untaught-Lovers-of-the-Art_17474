\version "2.6.3"
\include "english.ly"

melody = \relative c'' {
  \override Staff.TimeSignature #'transparent = ##t
  \time 2/4
  \key g \major
  r8 d8 \stemUp b4 \bar ""
}

\addlyrics { Cuck -- oo! }

\score {
  \new Staff \melody
  \midi { \tempo 4 = 100}
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
\paper { raggedright = ##t }