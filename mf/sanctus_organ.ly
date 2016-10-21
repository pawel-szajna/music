\version "2.18.2"

\include "sanctus_music.ly"
\include "common.ly"

\score {
    \new StaffGroup \with {
     % \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #9
    } <<
      \set StaffGroup.systemStartDelimiter = #'SystemStartBar
      \new PianoStaff <<
        \new Staff = "up"   { \key es \major \organRHNotes }
        \new Staff = "down" { \clef bass \key es \major \organLHNotes }
      >>
      \new Staff = "Pedal" <<
        \set Staff.instrumentName = "(Ped.)"
        \tempo "Molto allegro"
        \time 3/4
        \key es \major \clef bass
        \new Voice {
          \organPedNotes
        }
      >>
    >>

  \layout { }
  %\midi { }

}