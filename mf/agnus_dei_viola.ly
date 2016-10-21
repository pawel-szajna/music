\version "2.18.2"

\include "agnus_dei_music.ly"
\include "common.ly"

\score {
  \new Staff { \set Staff.instrumentName = "Altówka" \tempo "Andante" \key es \major \clef alto \violaNotes }
  \layout { }
  %\midi { }

}