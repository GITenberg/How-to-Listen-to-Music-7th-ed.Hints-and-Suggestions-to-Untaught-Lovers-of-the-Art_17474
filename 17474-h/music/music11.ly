\version "2.6.3"

\score {
\context RhythmicStaff {
\time 3/4
\autoBeamOff
d2~ d8[ d8] | d4
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
