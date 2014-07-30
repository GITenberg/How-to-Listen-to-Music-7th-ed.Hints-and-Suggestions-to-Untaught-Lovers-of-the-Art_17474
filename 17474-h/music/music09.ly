\version "2.6.3"

\score {
  \context RhythmicStaff {
  \time 2/4
  \autoBeamOff
  d4 d8[ d8] | d4 d4 \bar ""
  }
  \layout {  
    \context {
      \Score
       \remove Bar_number_engraver
      }
  }
  \midi { \tempo 4 = 100}
}
\paper { raggedright = ##t }
