\version "2.6.3"
\include "english.ly"

\score {
  \relative c' { <<
    \new Staff {
    \key ef \major
    \time 3/4
    r8.^\markup { \italic {Andante.} } bf'16[ g8. ef'16 bf8. g'16] | f8.[ d16 bf8. d16 f,8. bf'16]| ef,8.[ c16 a8. c16 f,8. ef'16] | \stemDown d8. f,16^"etc." \bar ""
    }

    \new Staff {
    \clef bass
    \key ef \major
    ef,4 r ef' | r r d | r r a \bar "||" r \bar ""
    }
   >>  
  }
  \midi { \tempo 4 = 96 }
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
