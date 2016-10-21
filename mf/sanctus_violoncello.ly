\version "2.18.2"

\include "sanctus_music.ly"
\include "common.ly"

\score {
  \new Staff { \set Staff.instrumentName = "Wiolonczela" \compressFullBarRests \tempo "Molto allegro" \time 3/4 \key es \major \clef bass \violoncelloNotes }
  \layout { }
  %\midi { }

}