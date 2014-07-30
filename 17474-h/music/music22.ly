\version "2.6.3"
\include "english.ly"

melody = \relative c'' \context Voice = "lyrics" {
    \key g \minor
    \time 6/8
    \clef treble
    \autoBeamOff
    r8 g8 g8 g8 g8 g8 | \stemUp g32[ bf32 d8.] g,8 g8 g8 g8 | \stemDown g32[ bf32 d32 g32] \bar ""
}

ignoreMelisma = \set ignoreMelismata = ##t

firstVerse = \lyricmode {
   Co co co co co
  \ignoreMelisma
   co co dai, etc. }

\score {
<<
 \new Staff \melody
 \lyricsto "lyrics" \new Lyrics \firstVerse
>>
  \midi { \tempo 4 = 116 }
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
