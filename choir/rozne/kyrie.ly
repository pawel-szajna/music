\version "2.18.2"

\include "../common.ly"

\header {
  title = "Kyrie"
}

sopNotes = \relative c'' {
\tempo "Lento Maestoso"
<<
{ \voiceOne
r2 g16 g g8~g4\fermata
r2 g16 g g8~g4\fermata
g8 g g g fis4 fis\fermata
\tuplet 3/2 { g8 g g } fis4 fis\fermata

} \new Voice
{ \voiceTwo
r4 fis16\f fis fis8~fis2\fermata
r4 fis16\f fis fis8~fis2\fermata
fis8 fis fis fis fis4 fis
}
>>
\tempo Andante

b,16\p cis d fis
b4 b~b8 b16( a) b8. a16
a4 fis2

b,16 cis d fis

\bar "|."

}

altNotes = \relative c' {

r2. d16\f d d8\fermata
r2. d16\f d d8\fermata

d8 d d d d4 d\fermata
\tuplet 3/2 { d8 d d } d4 d\fermata

b16\p cis d fis
g4 g~g8 g16( a) e8. e16
d4 d2

b16 cis d fis

}

tenNotes = \relative c' {

b16\f b b8~b2.\fermata
b16\f b b8~b2.\fermata

b8 b b b b4 b\fermata
\tuplet 3/2 { b8 b b } b4 b\fermata

b16\p cis b d
d4 d~d8 d cis8. cis16
fis,4 a2

b16 cis b d

}

basNotes = \relative c' {

b16\f b b8~b2.\fermata
b16\f b b8~b2.\fermata

b8 b b b b4 b\fermata

}

lyricsA = \lyricmode {

}

\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop { 
        \set Staff.instrumentName = "Sopran"
        \time 4/4
        \key d \major 
        \sopNotes }
        \new Lyrics \lyricsto "Sop" \lyricsA
      \new Voice = Alt {
        \set Staff.instrumentName = "Alt"
        \key d \major
        \altNotes }
        \new Lyrics \lyricsto "Alt" \lyricsA
      \new Voice = Ten {
        \set Staff.instrumentName = "Tenor"
        \clef "treble_8"
        \key d \major
        \tenNotes }
        \new Lyrics \lyricsto "Ten" \lyricsA
      \new Voice = Bas {
        \set Staff.instrumentName = "Bas"
        \clef bass
        \key d \major
        \basNotes }
        \new Lyrics \lyricsto "Bas" \lyricsA
    >>
  >>

  \layout { }

}
