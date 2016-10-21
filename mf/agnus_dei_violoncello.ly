\version "2.18.2"

\include "agnus_dei_music.ly"
\include "common.ly"

\score {
  \new Staff { \set Staff.instrumentName = "Wiolonczela" \tempo "Andante" \key es \major \clef bass \violoncelloNotes }
  \layout { }
  %\midi { }

}