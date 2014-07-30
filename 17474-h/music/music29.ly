\version "2.6.3"
\include "english.ly"

global = {
  \key d \major
  \time 4/4
  \autoBeamOff
}

noFlag = \once \override Stem #'flag-style = #'no-flag

sopMusic = \relative c' {
  e8 e8 e8 e8 e4. e8 a'1 ~ a1 ~ a2 a2
}

altoMusic = \relative c' {
  d8 d8 d8 d8 d4. cs8 cs'1\f \melisma cs1 cs2_\markup { \italic {dim.}} \melismaEnd cs2 
}

altoWords = \lyricmode {
  In der un -- ge -- heu -- 'ren Wei -- te.
}

tenorMusic = \relative c' {
  \stemDown \noFlag b8 \noFlag b8 \noFlag b8 \noFlag b8 b4. \stemUp a8 e'1 ~ e1 ~ \stemDown e2 e2
}

bassMusic = \relative c' {
  gs8 gs8 gs8 gs8 gs4. g8 g,1 ~ g1 ~ g2 g2
}

\score {
  \context ChoirStaff <<
    \context Staff = women <<
    \context Voice =
      sopranos { \voiceOne << \global \sopMusic >> }
    \context Voice =
      altos { \voiceTwo << \global \altoMusic >> }
  >>
   \context Lyrics = altos { s1 }
   \context Staff = men <<
     \clef bass
     \context Voice =
       tenors { \voiceOne <<\global \tenorMusic >> }
     \context Voice =
       basses { \voiceTwo <<\global \bassMusic >> }
>>
    \context Lyrics = altos \lyricsto altos \altoWords
>>

  \layout {
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
    \context {
       \Staff \remove Time_signature_engraver
    }
  }
  \midi { \tempo 4 = 126 }
}
