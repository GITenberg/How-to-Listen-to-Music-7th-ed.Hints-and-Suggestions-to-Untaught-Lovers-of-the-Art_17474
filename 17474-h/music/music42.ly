\version "2.6.3"
\include "english.ly"

\score {
  \new Staff {
  \clef bass
  \key f \major
  \time 4/4
  \autoBeamOff
  \once \override TextScript #'padding = #2.5
  r8^\markup { \italic {Sempre sotto voce.}} d16^\markup {Don Giovanni.} d16 g8 g16 fs16 g8 g8 r8^\markup {Leporello.} g8 |
  bf8 bf8 a8 bf8 g8 g8 r8 d8 | g8 g8 r8^\markup {D.G.} g8 e4 r8^\markup {Lep.} e8 |
  g8 g8 g8 r16 c'16 c'8 g8 r8^\markup {D.G.} g16 g16 |
  g8 g16 c'16 c'8 g8 r8 g8 e8 e8 | g8^\markup {Lep.} c8 \bar ""}

\addlyrics { \override LyricText #'font-shape = #'italic

 Le -- po -- rel -- lo,_o -- ve se -- i? Son qui per mia dis -- gra -- zia! e vo -- i? Son qui. Chi_è mor -- to, voi o_il vec -- chio? Che do -- man -- da da bes -- tia! il vec -- chio. Bra -- vo!
}

\addlyrics {
Le -- po -- rel -- lo, where are you? I'm here and more's the pit -- y! and you, Sir? Here too. Who's been killed, you or_the old one? What a ques -- tion, you boo -- by! the old one. Bra -- vo!
}

  \layout {
    indent = 0.0\cm
    \context {
      \Score \remove Bar_number_engraver
    }
    \context {
      \Staff \remove Key_engraver
    }
  }
  \midi { \tempo 4 = 100 }
}
