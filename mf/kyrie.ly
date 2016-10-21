\version "2.18.2"

\include "kyrie_music.ly"
\include "common.ly"

\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop { 
        \set Staff.instrumentName = "Sopran"
        \tempo "Lento"
        \time 4/4
        \key es \major s1 \bar "||"
        \sopNotes }
        \new Lyrics \lyricsto "Sop" \sopLyrics
      \new Voice = Alt {
        \set Staff.instrumentName = "Alt"
        \key es \major s1
        \altNotes }
        \new Lyrics \lyricsto "Alt" \altLyrics
      \new Voice = Ten {
        \set Staff.instrumentName = "Tenor"
        \clef "treble_8"
        \key es \major s1
        \tenNotes }
        \new Lyrics \lyricsto "Ten" \tenLyrics
      \new Voice = Bas {
        \set Staff.instrumentName = "Bas"
        \clef bass
        \key es \major s1
        \basNotes }
        \new Lyrics \lyricsto "Bas" \basLyrics
    >>

    \new StaffGroup <<
      \set StaffGroup.systemStartDelimiter = #'SystemStartBar
      \new PianoStaff <<
        \new Staff { \key es \major \organRHNotes }
        \new Staff { \clef bass \key es \major \organLHNotes }
      >>
      \new Staff = "Pedal" <<
        \set Staff.instrumentName = "(Ped.)"
        \key es \major \clef bass
        \new Voice {
          \organPedNotes
        }
      >>
    >>

    \new StaffGroup <<
      \new Staff { \set Staff.instrumentName = "Skrzypce I" \key es \major \violinANotes }
      \new Staff { \set Staff.instrumentName = "Skrzypce II" \key es \major \violinBNotes }
      \new Staff { \set Staff.instrumentName = "Altówka" \key es \major \clef alto \violaNotes }
      \new Staff { \set Staff.instrumentName = "Wiolonczela" \key es \major \clef bass \violoncelloNotes }
    >>

  >>

  \layout { }
  %\midi { }

}