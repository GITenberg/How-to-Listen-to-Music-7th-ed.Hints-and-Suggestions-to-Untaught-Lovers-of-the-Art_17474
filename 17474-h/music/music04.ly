\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \once \override TextScript #'padding = #3
 \partial 2 s4\f^ \markup { \italic {Allegro.}} \stemUp \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 {a'8_(  b c)} | \stemDown d4  \times 2/3 {b8( c d)} e4 \times 2/3 {e8( fs g)} | d2. \times 2/3 {d8\p( c b)} | \stemUp a4 \stemDown \times 2/3 {c8( b a)} \stemUp g4 \times 2/3 {b8( a g)} | fs4 \times 2/3 {fs8( g a)} \dynamicUp d,8\< s8\! \bar ""
}

\score {
  \new Staff \melody
  \midi { \tempo 4 = 160}
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
