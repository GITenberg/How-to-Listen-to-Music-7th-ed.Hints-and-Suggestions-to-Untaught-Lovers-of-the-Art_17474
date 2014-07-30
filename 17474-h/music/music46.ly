\version "2.6.3"
\include "english.ly"

melody = \relative {
  \clef bass
   \key ef \major
   \autoBeamOff
   \dynamicUp r4\f g4^\markup { \italic {Allegro.}} c,4 \stemUp d8 d | \stemDown ef8 \stemUp c \stemDown f4. ef16[ d(] ef8) f8 | \break
   g8 ef8 af4 r8 g8 g g | c f, f4 \break
   r8 af g f | ef4 \stemUp d c \bar ""
}

\addlyrics { He trust -- ed in God that he would __  de -- 
               liv -- er Him, let him de -- liv -- er him 
               if he de -- light in him. }

\score {
  \new Staff \melody
  \midi { \tempo 4 = 140 }
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}