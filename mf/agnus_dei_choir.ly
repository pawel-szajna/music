\version "2.18.2"

\include "agnus_dei_music.ly"
\include "common.ly"

\header {
  subsubtitle = "Chór"
}

\paper {
  ragged-right = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  ragged-last = ##f%

}

\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop { 
        \set Staff.instrumentName = "Sopran"
        \tempo "Andante"
        \time 4/4
        \key es \major \set Score.currentBarNumber = #5 \bar ""
        \sopNotes }
        \new Lyrics \lyricsto "Sop" \sopLyrics
      \new Voice = Alt {
        \set Staff.instrumentName = "Alt"
        \key es \major
        \altNotes }
        \new Lyrics \lyricsto "Alt" \altLyrics
      \new Voice = Ten {
        \set Staff.instrumentName = "Tenor"
        \clef "treble_8"
        \key es \major
        \tenNotes }
        \new Lyrics \lyricsto "Ten" \tenLyrics
      \new Voice = Bas {
        \set Staff.instrumentName = "Bas"
        \clef bass
        \key es \major
        \basNotes }
        \new Lyrics \lyricsto "Bas" \basLyrics
    >>
  >>

  \layout { }
  %\midi { }

}