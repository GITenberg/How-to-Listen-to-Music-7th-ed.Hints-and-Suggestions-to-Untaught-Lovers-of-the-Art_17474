\version "2.6.3"
\include "english.ly"

\score {
  \new Staff {
  \clef treble
  \key f \major
  \time 4/2
  \autoBeamOff
  \cadenzaOn
  g'2 a'1 \bar "|" c''4 \stemUp b'8 a'8 a'8 g'8 fs'8 e'8 fs'2 fs'2 \bar "|"
  r4 a'8 a'8 a'4 a'8 a'8 a'2 bf'4 \tieDown bf'4~ \bar "|" bf'4 a'4 a'1 a'2 r2
  fs'4 fs'4 \bar "|" a'2. g'8 fs'8 fs'2 fs'4 r4 \bar "|" d''1 fs'4 g'4 g'4.^( fs'8) \bar "|" g'1 \bar "||"
  }

\addlyrics { \override LyricText #'font-shape = #'italic
E voi, deh per pie -- ta, del mio mar -- ti -- re
Che nel mi -- se -- ro cor di -- mo -- ra_e -- ter -- no,
La -- cri -- ma -- te_al mio pian -- to om -- bre d'in -- fer -- no!
}

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

  \midi { \tempo 2 = 92 }
}

%%Transcriber's note: This transcription accurately reflects the original, which had inconsistent time values in each bar.