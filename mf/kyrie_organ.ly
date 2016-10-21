\version "2.18.2"

\include "kyrie_music.ly"
\include "common.ly"

\score {
    \new StaffGroup \with {
     % \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #9
    } <<
      \set StaffGroup.systemStartDelimiter = #'SystemStartBar
      \new PianoStaff <<
        \new Staff { \key es \major \organRHNotes }
        \new Staff { \clef bass \key es \major \organLHNotes }
      >>
      \new Staff = "Pedal" <<
        \set Staff.instrumentName = "(Ped.)"
        \tempo "Lento" 
        \key es \major \clef bass
        \new Voice {
          \organPedNotes
        }
      >>
    >>

  \layout { }
  %\midi { }

}