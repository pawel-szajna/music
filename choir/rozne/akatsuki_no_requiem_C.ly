\version "2.18.2"

\include "../common.ly"

\header {
  title = "暁の鎮魂歌"
  subtitle = "Akatsuki no Requiem"
}

sopNotes = \relative c' {

\autoBeamOff
\key a \major
\time 3/4
\partial 4

cis4\p a'2 a4 gis2
e4( fis) e4. d8 e2

cis4 d e fis a gis4.
e8 cis4.( d8) b4 cis2


cis4 a'2 a4 gis2
e4 fis gis4. a8 e2

cis4 d e fis a gis4.
e8 fis2.~fis

\bar "||"
\key d \major

b8\mf b b b b d
cis a fis2

g8 g g fis g b
a fis d2

e4 e8 d e g
fis d b4.
d8 e4 b4. e8 fis2.


b8 b b b b d
cis a fis2

g8 g g fis g b
a fis d2

e8 e e d e g
fis fis fis e fis a
b4. b16 b gis8 b
\time 4/4
b4 ais8 b cis2

\bar "||"

d2\f e8( d) cis b
b4. a8 a4. a8
b4. b8 a e e g
g4. fis8 fis4.

fis8 g4. g8 a g fis e
d4 fis b d
cis4. cis8 cis gis cis b
b4 ais8 b cis2~cis2.

fis,4 \bar "||" fis'4.\ff e8 e4.
fis8 fis4. e8 b4.
b16 cis d8 e fis( g) e4 e8 d
d d d d d4 cis

fis4.( e8) e4.
fis16 fis fis4. e8 b4.
b16 cis d8 e fis( g)
e4 cis \time 3/4 b2.~b4 r2

\bar "||"
\key g \major

b4-.\p r g-.
a-. fis-. r
g-. e-. r
fis-. d-. r

b'-. r g-.
a-. fis-. r
g-. fis-.
r8 e-. d4-. r2

\bar "|."

}

altNotes = \relative c' {

\autoBeamOff
\key a \major

s4

fis2.\pp( e d cis
d b a gis)

cis( cis d cis2)
cis4 b cis d e e4.
e8 cis2.~cis

\key d \major

b8\mf b b b b b
cis cis cis2

e8 e e e e e
fis d a2

c4 c8 c c c
d b a4.

b8 cis4 a4.
cis8 cis4( dis2)


b8 b b b b b
cis cis cis2

e8 e e e e e
fis d a2

c8 c c c c c
d d d cis! d e
e4. e16 e e8 e
fis4 fis8 fis fis4( e)

% shinzou

fis2\f a4 e8 e
g4. g8 fis4. fis8
d4. d8 cis cis e e
d4. d8 d4 c

e4. e8 cis cis cis cis
d4 d fis fis
fis4. fis8 eis eis eis eis
fis4 fis8 fis fis2~fis( e4)

% rekuiem

fis b4.\ff b8 cis4.
cis8 b4. b8 b4.
b16 b g8 g b4 e, e8 e
e e e e fis4 ais

b2 cis4. cis16 cis
b4. b8 b4. b16 b
g8 g b4 a e
e4.( cis d2.)

% intro koncowe

\key g \major

e2.\p( d e d)
e( fis e d)

}

tenNotes = \relative c' {

\autoBeamOff
\key a \major

s4

cis2.(cis a a
fis gis e eis)

fis( e fis e fis2)
fis4 b b4. b8 b2.( ais)

\key d \major

g8\mf g g g g g
a a a2

b8 b b b g g
a a fis2

g4 g8 g g g
fis fis fis4. fis8
a4 a4. e8 b'2( a4)

g8 g g g g g
a a a2

b8 b b b g g
a a fis2

g8 g g g g g
fis fis fis fis fis fis
e4. e16 e b'8 b
b4 b8 b ais2

% shinzou wa sasageta

b2\f a4 a8 a
a4. a8 a4. a8
g4. g8 e e a a
a4. a8 a4. a8

g4. g8 a a a a
a4 a a a
gis4. gis8 gis gis b b
b4 b8 b ais2( cis2.)

% rekuiem!

cis4 d4.\ff d8 e4. e8
dis4. dis8 e4. e16 e
b8 b g4 b b8 b
a a a a cis4 cis

d2 e4. e16 e
dis4. dis8 e4. e16 e
b8 b g4 g g fis2.~fis

% intro końcowe
\key g \major

g2.( a c a)
b( d c a)

}

basNotes = \relative c {

\autoBeamOff
\key a \major
s4

fis2.( gis fis e
d e cis cis)

fis,( gis a a d2)
d4 e e4. e8 fis2.( fis,)

\key d \major

g8\mf g b b d d
fis fis fis2

e8 e d d b b
d d d2

c4 b8 b gis gis
b b b4. b8
a4 cis4. cis8
b2.


g8 g b b d d
fis fis fis2

e8 e d d b b
d d d2

c8 c b b gis gis
b b b b fis fis
gis4. gis16 gis gis8 gis
fis4 fis8 fis fis2

%shinzou
b2\f cis4 cis8 cis
d4. d8 d4. c8
g4. g8 a a a a
d4. d8 d4 dis

e4. b8 a a cis cis
d4 cis d b
cis4. cis8 cis cis cis cis
fis4 fis8 fis fis2(
~fis4 e d)

% rekuiem

cis b4.\ff b8 ais4. ais8
a!4. a8 gis4. gis16 gis
g!8 g g4 gis gis8 gis
a8 a a a ais4 ais

b2 ais4. ais16 ais
a!4. a8 gis4. gis16 gis
g!8 g g4 a a
b2.~b

% outro
\key g \major

e2.( fis g fis)
g( a g fis)

}


lyricsS = \lyricmode {

Da -- i -- chi to ō -- zo -- ra wa na -- ze wa -- ka -- re -- ta no -- da -- ro -- u.
Se -- ka -- i wa za -- n -- ko -- ku -- de sa -- re -- do u -- tsu -- ku -- shi -- i.

I -- shi o na -- ge -- ru mo -- no to na -- ge ra -- re -- ru mo -- no ni wa
yō -- i ni ko -- e ra -- re -- nu sa -- ku ga a -- ru.
Ta -- chi i -- chi ga ka -- wa -- re -- ba se -- i -- gi wa ki -- ba o mu -- ku
o -- ri no na -- ka de ho -- e -- te i -- ru no wa wa -- ta -- shi -- te do -- chi -- ra ka?

Shin -- zō wo sa -- sa -- ge -- ta mo -- do -- se -- na -- i ta -- so -- ga -- re ni
su -- su -- mi tsu -- dzu -- ke -- ta yo -- ru -- no -- ha -- te ra -- ku -- en wa do -- ko ni a -- ru?

Re -- ku -- i -- em! Re -- ku -- i -- em!
Ko -- no yo -- ru ni chi -- tta na mo na -- ki ha -- na yo
dō ka ya -- su -- ra -- ka ni a -- ka -- tsu -- ki ni ne -- mu -- re.

Na na na na…

}

lyricsA = \lyricmode {

Mmm…
Aaa…

sa -- re -- do u -- tsu -- ku -- shi -- i.

I -- shi o na -- ge -- ru mo -- no to na -- ge ra -- re -- ru mo -- no ni wa
yō -- i ni ko -- e ra -- re -- nu sa -- ku ga a -- ru.
Ta -- chi i -- chi ga ka -- wa -- re -- ba se -- i -- gi wa ki -- ba o mu -- ku
o -- ri no na -- ka de ho -- e -- te i -- ru no wa wa -- ta -- shi -- te do -- chi -- ra ka?

Shin -- zō wo sa -- sa -- ge -- ta mo -- do -- se -- na -- i ta -- so -- ga -- re ni
su -- su -- mi tsu -- dzu -- ke -- ta yo -- ru -- no -- ha -- te ra -- ku -- en wa do -- ko ni a -- ru?

Re -- ku -- i -- em! Re -- ku -- i -- em!
Ko -- no yo -- ru ni chi -- tta na mo na -- ki ha -- na yo
dō ka ya -- su -- ra -- ka ni a -- ka -- tsu -- ki ni ne -- mu -- re.

Mmm…

}

lyricsT = \lyricmode {

Mmm…
Aaa…

u -- tsu -- ku -- shi -- i.

I -- shi o na -- ge -- ru mo -- no to na -- ge ra -- re -- ru mo -- no ni wa
yō -- i ni ko -- e ra -- re -- nu sa -- ku ga a -- ru.
Ta -- chi i -- chi ga ka -- wa -- re -- ba se -- i -- gi wa ki -- ba o mu -- ku
o -- ri no na -- ka de ho -- e -- te i -- ru no wa wa -- ta -- shi -- te do -- chi -- ra ka?

Shin -- zō wo sa -- sa -- ge -- ta mo -- do -- se -- na -- i ta -- so -- ga -- re ni
su -- su -- mi tsu -- dzu -- ke -- ta yo -- ru -- no -- ha -- te ra -- ku -- en wa do -- ko ni a -- ru?

Re -- ku -- i -- em! Re -- ku -- i -- em!
Ko -- no yo -- ru ni chi -- tta na mo na -- ki ha -- na yo
dō ka ya -- su -- ra -- ka ni a -- ka -- tsu -- ki ni ne -- mu -- re.

Mmm…

}


\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop { 
        \set Staff.instrumentName = "Sopran"
        \transpose a c' { \sopNotes } }
        \new Lyrics \lyricsto "Sop" \lyricsS
      \new Voice = Alt {
        \set Staff.instrumentName = "Alt"
        \transpose a c' {\altNotes } }
        \new Lyrics \lyricsto "Alt" \lyricsA
      \new Voice = Ten {
        \set Staff.instrumentName = "Tenor"
        \clef "treble_8"
        \transpose a c' {\tenNotes } }
        \new Lyrics \lyricsto "Ten" \lyricsT
      \new Voice = Bas {
        \set Staff.instrumentName = "Bas"
        \clef bass
        \transpose a c' {\basNotes } }
        \new Lyrics \lyricsto "Bas" \lyricsT
    >>
  >>

  \layout { }

}
