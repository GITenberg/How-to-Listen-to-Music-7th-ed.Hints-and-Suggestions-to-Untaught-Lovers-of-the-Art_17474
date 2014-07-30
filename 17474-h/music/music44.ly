\version "2.6.4"
\include "english.ly"

\score {
  \new Staff {
  \autoBeamOff
  g''4 r8 d''8 g''4 a''4 | b''4 r8 a''8( b''8)[ b''8( c'''8 b''8)] |
  d'''4 r8 b''8(c'''8)[ c'''8( d'''8 c'''8)] | e'''4 r8 d'''8 e'''8[ e'''8 fs'''8 fs'''8] |
  g'''8[ d'''8] d'''8^\trill[ c'''16 d'''16] g'''4 e''8[ c''8] | \stemDown b'16[ g'16 a'16 b'16] c''16[ d''16 e''16 fs''16] g''16[ a''16 b''16 c'''16] d'''16[ e'''16 fs'''16 g'''16] | \stemUp d'2 a'2^\trill | g'4 r4 r2 | c'''1\startTrillSpan | d'''1  |

%254
  e'''1 | f'''2 \stopTrillSpan a'2 | g'2 f'2 | e'4 r4 r2 | \stemDown c''2 r16 \stemUp c'16[ d'16 e'16] f'16[ g'16 a'16 b'16] |
  \stemDown c''2 r16 \stemUp e'16[ f'16 g'16] a'16[ b'16 c''16 d''16] | \stemDown e''2 r16 d''16[c''16 b'16] c''16[ d''16 e''16 f''16] |
  g''2 r16 g''16[ f''16 e''16] f''16[ g''16 a''16 b''16] | c'''2 r16 b''16[ a''16 g''16] a''16[ b''16 c'''16 d'''16] |
  e'''2 r16 d'''16[ c'''16 b''16] c'''16[ d'''16 e'''16 f'''16] | g'''2 r8 f'''16[ e'''16] f'''16[ g'''16 a'''16 b'''16] | c''''1 \bar "||"
}
  \midi { \tempo 4 = 120}
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
