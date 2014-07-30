\version "2.6.3"
\include "english.ly"

\score {
\relative c' <<
  \new Staff {\key g \major \time 4/4
          \partial 2 * 1 s2_\markup{ \italic \bold {p dolce.} } | \bar ""
          <b d g b>2~
          <b d g b>8^(\noBeam <b' d,-. g>) <d,-. g b> <d-. g b> \bar "|" |
          <<   \once \override Voice.Beam #'positions = #'(3 . 3)
             {<g b>8( <fs a>) <fs a>^. <fs a>^. <fs a>( <g b>) <g b>^. <g b>^.^"etc."} \\
            {d4 d8 d d4 d8 d}
        >> \bar "|" |
        }
        \new Staff { \key g \major \clef bass  \partial 2 * 1 s2 
             <g,, b g' d>2~ <g b g' d>8^(\noBeam <g' b-. >8) <g b>^. <g b> ^. |
             <g b>( <d a'>) <d a'>^. <d a'>^. <d a'>( <b g'>) <b g'>^. <b g'>^.}
>>

  \midi { \tempo 4 = 130 }
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }     
  }
}