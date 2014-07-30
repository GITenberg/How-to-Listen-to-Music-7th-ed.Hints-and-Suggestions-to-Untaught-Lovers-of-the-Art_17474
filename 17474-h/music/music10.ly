\version "2.6.3"

\score {
\context RhythmicStaff {
\autoBeamOff
d4^^ d4 d4
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
