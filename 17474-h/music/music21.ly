\version "2.6.3"
\include "english.ly"

\relative c' <<
  \new Staff {
  \key d \major
  \time 3/4
  \clef treble
  R2.^\markup{ \italic {Gallo.} } a''4. a8 a4 b2.~ b2 a4 fs4 r2
  }

   \new Staff {
   \key d \major
   \time 3/4
   \clef bass
   d,4 d,8-. [d8-. d8-. d8-.] fs8 ([a8]) d,8-. [d8-. d8-. d8-.] g8 ([b8]) d,8-. [d8-.  d8-. d8-.] b'8 ([d8]) g,8 ([b8]) cs8 ([e8]) d4 d,8-. [d8-. d8-. d8-.] }
>>

\score {
  \midi { \tempo 4 = 130 }
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }     
  }
}
