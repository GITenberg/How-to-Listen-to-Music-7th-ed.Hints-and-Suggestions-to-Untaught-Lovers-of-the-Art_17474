\version "2.6.3"
\include "english.ly"

\score {
\relative c' <<
  \new Staff {
  \key d \major
  \time 4/4
  \clef treble
  \once \override TextScript #'padding = #1.5
  r8\p^\markup { \italic {Allegro moderato.}} fs'8 (d8[ cs16 d16] b4 fs4) r8 fs'8 (d8[ cs16 d16] b4 fs4) \bar "|"
  }
   \new Staff <<
   \key d \major
   \time 4/4
   \clef bass
   { fs,1~ fs1 } \\
   { b,2 r2 b2 r2 } \bar "|" >>
>>

 \midi { \tempo 4 = 126 }
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }     
  }
}
