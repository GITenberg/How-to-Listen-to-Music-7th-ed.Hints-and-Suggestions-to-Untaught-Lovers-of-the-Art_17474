\version "2.6.3"
\include "english.ly"

\score {
  \relative c' <<
   \new Staff <<
   \time 4/4
   \key bf \major
   \clef treble
   { \partial 16 bf'16 | bf4( bf16) g'16 fs16 g16 c,4( c16) a'16 g16 a16 | \stemDown d,16 g,16 bf16 d16 g16 bf16 a16 g16 fs16 g16 a16 ef16 d16 c16 bf16 a16^"etc." }\\
   { \partial 16 s16 | g4 r4 a4 r4 } \bar "|"
   >>
  >>

  \midi { \tempo 4 = 100}
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
