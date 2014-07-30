\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \key c \minor
  \time 2/4
  \once \override TextScript #'padding = #2.5
   r8 \ff^ \markup { \italic {Allegro con brio.}}
   g'[ g g] | ef2^\fermataMarkup |
 }

\score {
  \new Staff \melody
  \midi { \tempo 4 = 150}
  \layout {
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
\paper { raggedright = ##t }
