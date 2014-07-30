\version "2.6.3"
\include "english.ly"

\score {
\relative c' { <<
  \new Staff <<
  \time 3/2
  \clef treble
  \autoBeamOff
  { \times 2/3 {r8 _(g'8[ c8]} \times 2/3 {e8[ g8 c8]} c4.) c8 c2 \times 2/3 {r8 g,8[ c8]} \times 2/3 {e8[\p g8 c8]} b4. b8 b2 }\\
  { r2 f2\mp c2 r2 <b d>2 c2 } \bar "|"
  >>

   \new Staff {
   \time 3/2
   \clef treble
   \repeat "tremolo" 4 {<c, e>16 g'16} \repeat "tremolo" 4 {c,16 a'16} \repeat "tremolo" 4 {c,16 g'16} \repeat "tremolo" 4 {<c, e>16 g'16} \repeat "tremolo" 4 {c,16 f16} \repeat "tremolo" 4 {c16 e16} \bar "|" }
 >> }

 \midi { \tempo 4 = 126 }
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
