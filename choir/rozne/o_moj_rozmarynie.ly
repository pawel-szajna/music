\version "2.18.0"

\include "../common.ly"

\header {
%  title = "O mój rozmarynie"
}

\paper {
print-page-number = ##f
ragged-last-bottom = ##f
}

\layout {
%  ragged-last = ##t
}

sopNotes = \relative c' {

e8\p e\< e e a4\! g
fis g8\> fis e2\!

b'8\< b b b e4\! d
c d8\> c b2\! \break

b8. b16 b8\< b c4\! b
a8. g16 fis8 e a4 g
fis g8 a b2 \break

b8. b16\< b8 b\! c4 b 
a8. g16 fis8 e a4 g
fis g8\> fis e2\!


\bar "|."

}

altNotes = \relative c' {

e8\p e\< c d e4\! e
e e8\> e e2\!

b8\< e fis g g4\! g
g fis8\> fis g2\!

b8. a16 g8\< fis g4\! g
a8. g16 fis8 e e4 e
e e8 e dis4( fis)

b8. a16\< g8 fis\! g4 g
fis8. e16 d8 c e4 e
dis dis8\> dis e2\!

}

tenNotes = \relative c {
e8\p g\< a b c4\! b
a b8\> a g2\!

g8\< b c d e4\! d 
c b8\> a g2\!

r2 e'8 e\< e e\!
e4 a, c8 c c c 
c4 b b b8 a g4

r4 e'8\< e e e\!
d4 a c8 c c c
b b r b\> a fis g4\!
}

basNotes = \relative c {
e8\p e\< e e e4\! e
e e8\> e e2\!

e8\< g a b c4\! b
a d,8\> d g2\!

r2 e8 fis\< g b\!
c4 c c,8 d e g 
a4 g b, cis8 dis e4

r a,8 a\< b c\!
d4 d fis8 fis g a 
b b r b,\> e e e4\!
}

lyricsS = \lyricmode {
"1. O" mój roz -- ma -- ry -- nie, roz -- wi -- jaj się,
o mój roz -- ma -- ry -- nie, roz -- wi -- jaj się,
pój -- dę do dziew -- czy -- ny,
pój -- dę do je -- dy -- nej,
za -- py -- tam się,
pój -- dę do dziew -- czy -- ny,
pój -- dę do je -- dy -- nej,
za -- py -- tam się.
}

lyricsA = \lyricmode {
}

lyricsT = \lyricmode {
    o
}

lyricsB = \lyricmode {
}

\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop { 
        \set Staff.instrumentName = "Sopran"
        \key g \major
        \sopNotes }
        \new Lyrics \lyricsto "Sop" \lyricsS
      \new Voice = Alt {
        \set Staff.instrumentName = "Alt"
        \key g \major
        \altNotes }
        \new Lyrics \lyricsto "Alt" \lyricsA
      \new Voice = Ten {
        \set Staff.instrumentName = "Tenor"
        \clef "treble_8"
        \key g \major
        \tenNotes }
        \new Lyrics \lyricsto "Ten" \lyricsS
      \new Voice = Bas {
        \set Staff.instrumentName = "Baß"
        \clef bass
        \key g \major
        \basNotes }
        \new Lyrics \lyricsto "Bas" \lyricsB
    >>
  >>

  \layout { }
  %\midi { }

}
