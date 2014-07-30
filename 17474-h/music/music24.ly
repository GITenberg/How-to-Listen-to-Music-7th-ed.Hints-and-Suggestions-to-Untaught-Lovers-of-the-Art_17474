\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \time 2/4
  r8 <c e g c>8 <c e g c>4 | r8 <c ef g c>8 <c ef g c>4 \bar "||"
}

\addlyrics { Hur -- rah! A -- las! }

\score {
  \new Staff \melody
  \midi { \tempo 4 = 60}
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
    \context {
      \Staff
        \remove "Time_signature_engraver"
    }
  }
}
\paper { raggedright = ##t }