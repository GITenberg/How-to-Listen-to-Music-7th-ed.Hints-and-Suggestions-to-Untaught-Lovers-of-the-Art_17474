\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \key c \major
  \time 4/2
  \partial 4*2 c'4( d4) | e2 e2 e2 d2 | e2. d4 c2 g'2 \break
  f2 e2 d2. c4 | d1 r2 c4( d4) | e2 e2 e2 d2 | e2. d4 c2 g'2 \break
  f2 e2 d4( c4) d2 | c1. \bar ":|:" f2 \bar "|" f2 e2 f2 g2 \break 
  a2. g4 f2 g2 | a2 bf4( a4) g4( f4) g2 | f1. e4( f4) \break
  g2 a2 g2 f2 | e2. d4 c2 g'2 | f2 e2 d4( c4) d2 | c1. \bar ":|"
}

\score {
  \new Staff \melody
  \midi { \tempo 2 = 100 }
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
%%Transcriber's note: Original text indicates 2/2 time, but there are 4 half-notes to the bar.