\version "2.6.4"
\include "english.ly"

\score {
\context RhythmicStaff {
\time 2/4
\autoBeamOff
d8[ d8 d8 d8] | d8[ d16 d16 d8 d8] \bar ""
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
