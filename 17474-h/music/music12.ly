\version "2.6.3"

\score {
\context RhythmicStaff {
\time 4/4
\autoBeamOff
d8.[ d16 d8. d16]
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
