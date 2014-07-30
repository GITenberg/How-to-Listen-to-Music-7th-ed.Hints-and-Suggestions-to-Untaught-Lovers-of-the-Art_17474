\version "2.6.4"
\include "english.ly"

\score {
\context RhythmicStaff {
\time 3/4
\autoBeamOff
d4 d4.^> d8 | d8.[ d16] d2
}
  \layout {
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
      }
  }
  \midi { \tempo 4 = 100}
}
\paper { raggedright = ##t }
