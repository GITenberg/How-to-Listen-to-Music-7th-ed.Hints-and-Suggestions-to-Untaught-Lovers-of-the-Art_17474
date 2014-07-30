%%coding: utf-8
\version "2.6.3"
\include "english.ly"

melody = \relative c'' \context Voice = "lyrics" {
    \clef treble
    \time 2/4
    \autoBeamOff
    r8 g16. g32 g8 r8 | r8 g16. g32 g8 r8 \bar "|"
}

firstVerse = \lyricmode {
   Fürch -- te Gott! Lo -- be Gott!
}

\score {
<<
 \new Staff \melody
 \lyricsto "lyrics" \new Lyrics \firstVerse
>>
  \midi { \tempo 4 = 80}
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
        \remove Bar_number_engraver
    }
    \context {
      \Staff
        \remove Time_signature_engraver
    }
  }
}
