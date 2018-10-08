\version "2.18.2"

\header {
 title = "Mini-etude in D"
 composer = "Vi Hart"
 poet = "Bonus points if you play it within 15 seconds!"
}

upper = \relative c'' {
\key d \major
\time 3/4

<< { a2. \tuplet 2/3 { g4( d) } } \\ { r4 r r r r r } >>
fis2. \tuplet 2/3 { e4( g) } \tuplet 4/6 { a8( b a b } a2.)
fis4^"Faster"( a fis g b g) a( d4. cis8 b4 fis' d)
\tuplet 4/6{cis8(( d e fis) d( e fis g))}
\tuplet 4/6{e^"rit." fis <<a8. a'>> g,16}
fis4 <<a2 a'>>

\bar "|."

}

lower = \relative c' {
\clef bass 
\key d \major
\time 3/4

d2.

}

\score {
\new PianoStaff \with { instrumentName = #"Piano" } <<
\new Staff = "upper" \upper
\new Staff = "lower" \lower
>>
}
