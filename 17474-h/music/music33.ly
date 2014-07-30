\version "2.6.3"
\include "english.ly"

global = {
  \key f \major
  \time 3/2
}

i = \context Staff \relative c' {
  \context Voice = "i"
  \voiceOne
  %191 voice 1 treble
  <f a>2\pp <f a>2 b4\rest <f a>4 | <f bf>2 <f bf>2 b4\rest <f bf>4 | g2 <e c'>2 b'4\rest <e, bf'>4 | bf'4( a4) <f a>2 b2\rest \break
  <d, f d'>2\mf <d f d'>2 e'4 f8 g8 | c,2 c2 r4 f4 | a,4 g4 <f a>2 g4( f4) | f1.^\markup { \italic {Fine.}} \bar "||" \break
  %192 voice 1 treble
  <f a>2 <a f'>2. <f d'>4 | b4 a4 <d, g>2 b'2\rest | <g d'>2 <b g'>2. <b e>4 \break
   c4 b4 <a c>2 r4 <a f'>4\f | s4 d4 <c e>2 <a d>4 <e c'>4_\markup { \italic {dim.}} | <e c'>1.^\markup { \italic {D.C. al fine.} } \bar "|."
}

ii = \context Staff \relative c' {
  \context Voice = "ii"
  \voiceTwo
  % 191 voice 2 treble
    s2 s2 s4 s4 | s2 s2 s4 s4 | f2 s2 s4 s4 | f2 s2 s2 |
    s2 s2 r2 | e2 <f a>2 r2 | f2 s2 e2 | s1. |
  %192 voice 2 treble
    s2 s2. s4 | d2 b2 s2 | s2 g'2. g4 |
    <e a>2 e2 r2 | <g e'>4 c4 g2 b2 | s1.
}

iii = \context Staff \relative c {
  \context Voice = "iii"
  \voiceOne
  \autoBeamOff
  %191 voice 1 bass
  s2 s2 s4 s4 | s2 s2 s4 s4 | s2 s2 s4 s4 | s2 c'2 r2 |
  bf,2 s2 s2 | s2 s2 s2 | s2 c'2 s2 | a1. |
  %192 voice 1 bass
  s2 s2. s4 | s2 g,2 s2 | s2 s2. s4 | s2 s2 s2 | s2 s2 s2 | c2 s4 s4 s4 s4
}

iv = \context Staff \relative c {
  \context Voice = "iv"
  \voiceTwo
  %191 voice 2 bass
  <f c'>2 <f c'>2 f4\rest <f c'>4 | <g bf>2 <g bf>2 f4\rest <g bf>4 | <c, c'>2 <c c'>2 f4\rest <c c'>4 | <f c'>2 f4 e4 d4 c4 |
  s2 bf'2 f2\rest | bf2 a2 f2\rest | <bf d>2 c2 <c, bf'>2 | f1. |
  %192 voice 2 bass
  <f c'>2 <d d'>2. <f d'>4 | g2 s2 f2\rest | <g b>2 e2. g4 |
  a2 a2 f2\rest | g2 g,1 | s2 c'4 bf4 a4 g4
}

\score {
  \context PianoStaff <<
    \context Staff = "treble" <<
      \global
      \clef treble
      \i
      \ii
    >>
    \context Staff = "bass" <<
      \global
      \clef bass
      \iii
      \iv
    >>
  >>
  \midi { \tempo 4 = 126 }
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
