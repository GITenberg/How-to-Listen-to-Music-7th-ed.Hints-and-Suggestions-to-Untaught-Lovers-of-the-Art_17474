\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \key f \minor
  \time 4/4
  \clef treble
  af'8.[ g16 f8 f8] af8[ af8] c4 | g8.[ f16 e8 e8] g8[ g8] c4 | af8.[ g16 f8 f8] af8[ af8] c4 | g8[ bf8 e,8 g8] f4 r4 | c'8.[ bf16 af8 af8] c[ c] ef4 | bf8.[ af16 g8 g8] bf8[ bf8] ef4 | af,8.[ g16 f8 f8] af8[ af8] c4 | g8[ bf8 e,8 g8] f4 r4 \bar "||"
  }

\score {
  \new Staff \melody
  \midi { \tempo 4 = 100}
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
