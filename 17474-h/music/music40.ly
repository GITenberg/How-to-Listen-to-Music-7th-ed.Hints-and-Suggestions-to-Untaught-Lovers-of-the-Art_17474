\version "2.6.3"
\include "english.ly"

\score {
  \context RhythmicStaff {
  \autoBeamOff
  d16[ d8.]
  }

  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
  \midi { \tempo 4 = 100 }
}
\paper { raggedright = ##t }
