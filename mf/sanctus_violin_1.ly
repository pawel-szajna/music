\version "2.18.2"

\include "sanctus_music.ly"
\include "common.ly"

\score {
  \new Staff { \set Staff.instrumentName = "Skrzypce I" \compressFullBarRests \tempo "Molto allegro" \time 3/4 \key es \major \violinANotes }
  \layout { }
  %\midi { }

}