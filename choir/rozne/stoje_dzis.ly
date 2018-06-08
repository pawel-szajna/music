\version "2.18.2"

\include "../common.ly"

\header {
  title = "Stoję dziś"
}

sopNotes = \relative c' {

%stoje…
r2 fis4~fis8 a
\repeat volta 2 {
a2. e8 e
b'4. a8 b4 a
b cis b a
%w podziwie…
r2 a4 a~
a e~e8 e e e
b'2 cis
b4 a~a fis~fis
%stoje…
r fis~fis8 a
a2. e8 e
b'4. a8 b4 a
b cis b a
%ja chce…
a2 cis4 a~
}
\alternative {
{
a2 cis4 b~b1~b2( a
fis4) r fis~fis8 a
}
{
a2 e'4 e\fermata
}
}

\bar "|."

}

altNotes = \relative c' {

%stoję…
d2^\markup{ATB {\dynamic p} wokaliza, tekst od 2. powtórzenia} d2
e2. e8 e
gis4. fis8 fis( gis) fis4
fis a a gis
%w podziwie
fis2 fis
e2~e8 cis8 cis cis 
fis2 fis 
gis4 e~e e( cis)
%stoję
r cis~cis8 cis
fis2( d4) d8 d
gis4. fis8 fis( gis) fis4
e e e e
%ja
fis2 fis4 fis~
fis2 fis4 fis( 
%ty
gis2 fis
e1 d4)
%stoję
r d~d8 d
%koniec
fis2 gis4 a
}

tenNotes = \relative c' {
%stoję…
a2 a
cis2. cis8 cis 
b4. b8 b4 cis
cis cis e e
%w podziwie
d2 d
cis~cis8 cis cis cis
d2 a
gis4 cis( b) b( a)
%stoję
r a4~a8 a 
a2. a8 a 
gis4 b b cis
d e d cis
%ja
cis2 a4 a~
a2 a4 a(
%ty
gis2 a
b cis
b4) r a~a8 a
%zakonczenie
a2 gis4 cis
}

basNotes = \relative c {

%stoję…
d2 d
a2. cis8 cis
e4. e8 e4 e
fis4 fis fis cis
%w podziwie…
d2 d 
a2~a8 a' a a 
b,2 d
e4 e~e e( 
%stoję…
fis) r fis~fis8 fis
d2. d8 d
e4. e8 e4 e
a, a a e'
%ja…
fis2 fis4 fis(
d2) d4 d( 
%ty
e2 fis 
gis a
b4) r d,~d8 d
%zakonczenie
d2 e4 <<e a,>>

}

lyricsA = \lyricmode {
Sto -- ję dziś, mo -- je rę -- ce, ser -- ce tak wy -- cią -- gam
w_po -- dzi -- wie dla Te -- go, któ -- ry wszy -- stko dał, 
sto -- ję dziś, mo -- ją du -- szę, Pa -- nie, To -- bie skła -- dam,
ja chcę być jak Ty,
sto -- ję być jak Ty.
}

\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop { 
        \set Staff.instrumentName = "Sopran"
        \time 4/4
        \key a \major 
        \sopNotes }
        \new Lyrics \lyricsto "Sop" \lyricsA
      \new Voice = Alt {
        \set Staff.instrumentName = "Alt"
        \key a \major
        \altNotes }
        \new Lyrics \lyricsto "Alt" \lyricsA
      \new Voice = Ten {
        \set Staff.instrumentName = "Tenor"
        \clef "treble_8"
        \key a \major
        \tenNotes }
        \new Lyrics \lyricsto "Ten" \lyricsA
      \new Voice = Bas {
        \set Staff.instrumentName = "Bas"
        \clef bass
        \key a \major
        \basNotes }
        \new Lyrics \lyricsto "Bas" \lyricsA
    >>
  >>

  \layout { }

}
