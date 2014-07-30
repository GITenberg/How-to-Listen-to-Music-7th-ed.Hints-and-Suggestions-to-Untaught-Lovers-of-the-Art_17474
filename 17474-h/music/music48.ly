\version "2.6.3"
\include "english.ly"

\score {
  \relative <<
  \new Staff {
  \time 2/2
  \cadenzaOn <e a>1 <g b> \bar "|" <f a c> << { <a c>2 } \\ <f>2 >> \bar ""
  }
  \new Staff {
  \clef bass
  \cadenzaOn <a, cs>1 <g d'> \bar "|" f <<f2>>  \bar ""
  }
  \new Lyrics \lyricmode {  Sta1 -- bat ma -- ter2 }
>>

 \midi { \tempo 4 = 120 }
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
\paper { raggedright = ##t }