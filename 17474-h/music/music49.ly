\version "2.6.3"
\include "english.ly"

global = {
  \key bf \major
  \time 4/4
}

sopMusic = \relative c' {
  a'8-. a8-. a8-. a8-. a8-. a8-. a8-. a8-. | g8-. g8-. g8-. g8-. g8-. g8-. g8-. g8-. | fs8-. fs8-. fs8-. fs8-. g8-. g8-. g8-. g8-. | a8-. a8-. a8-. a8-. fs8-. fs8-. fs8-. fs8-.^\markup {etc.}
}

altoMusic = \relative c' {
  c8\pp\melisma c8 c8 c8\melismaEnd c8\melisma c8 c8 c8\melismaEnd | c8\melisma c8 c8 c8\melismaEnd cs8\melisma cs8 cs8 cs8\melismaEnd | d8\melisma d8 d8 d8 cs8 cs8 cs8 cs8 | c8 c8 c8 c8 c8 c8 c8 c8\melismaEnd
}

altoWords = \lyricmode {
  Quan -- tus tre -- mor, tre __
}

tenorMusic = \relative c' {
  f,8 f8 f8 f8 f8 f8 f8 f8 | ef8 ef8 ef8 ef8 ef8 ef8 ef8 ef8 | d8 d8 d8 d8 ef8 ef8 ef8 ef8 | d8 d8 fs8 fs8 a8 a8 a8 a8
}

bassMusic = \relative c' {
  f,8-. f8-. f8-. f8-. f8-. f8-. f8-. f8-. | ef8-. ef8-. ef8-. ef8-. ef8-. ef8-. ef8-. ef8-. | d8-. d8-. d8-. d8-. ef8-. ef8-. ef8-. ef8-. | d8-. d8-. d8-. d8-. d8-. d8-. d8-. d8-.
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
