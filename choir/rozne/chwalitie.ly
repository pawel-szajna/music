\version "2.18.2"

\include "../common.ly"

\header {
  title = "Chwalitie Imia Gospodnie"
  composer = "Romuald Twardowski"
}

\layout {
   \context {
     \Staff
     \RemoveEmptyStaves
     \override VerticalAxisGroup #'remove-first = ##t 
   }
}

subP = \markup { \italic sub. \dynamic p }

sopNotes = \relative c' {

s4 s1*14

% aliłuja
e8\p e e\< e e e\! f4\> f\! r
f8 f f\< f f f\! g4\> g\! r
c4.\f( b8) a( b)\> gis4 gis\! r2

s1*9

e8\p e e\< e e e\! f4\> f\! r
f8 f f\< f f f\! g4\> g\! r
d'4.\f( c8) a( b) gis4\> gis\! r2

s1*7

e8\p e e\< e e e\! f4\> f\! r
f8 f f\< f f f\! g4\> g\! r
d'4.\f( c8) a( b) gis4\> gis\! r2

% ispowiedajtiesia
s1*2 r2 r4 b8\f b c4. b8\> a gis\! r4

% bogu niebiesnomu
s1*2 r2 r4 b8\f b e4.( d8) c b a4
gis8 gis a2
c2^\subP a4 e2( f4) e2 r4

% alliłuja
cis'8\p cis cis\< cis cis cis\! d4\> d\! r
d8 d d\< d d d\! e4 e r
fis4.\f d8 cis d
e4. b8 cis d
r4 e8 d \tempo "rall." e4( fis) <<fis2. d>>

}

altNotes = \relative c' {

s4 s1*14

% aliłuja
c8 c c c c c c4 c r
c8 c c c c c c4 c r
e2 d4 e e r2

s1*9

c8 c c c c c c4 c r
c8 c c c c c c4 c r
f4.( e8) d4 e e r2

s1*7

c8 c c c c c c4 c r
c8 c c c c c c4 c r
f4.( e8) d4 e e r2

% ispowiedajtiesia
s1 r2 r4 e8\f e
f4. e8 d c b b
e4. e8 e e r4

% bogu niebiesnomu
s1 r2 r4 e8\f e
a4.( g8) f( e) d f
e4( f) e8 e e4
e8 e e2
f2 d4 d2( c4) b2 r4

% alliłuja
e8 e e e e e fis4 fis r
fis8 fis fis fis fis fis e4 e r
a4. a8 fis a
e4. fis8 g g 
r4 <<fis8 a>> <<fis a>> <<b4 g~>> <<g cis>> fis,2.

}

tenNotes = \relative c' {

s4 s1*3 r4

% chwalitie imia gospodnie 

b\p\< c2\! b4 d2 c4
b4.( c8 b a) b\>( c) b2.\! r4

s1*3 r4

% chwalitie rabi gospoda

b\p c2 b4 d2 c4
b4.( c8 b a) b( c) b2.\> r4\!

% aliłuja

g8 g g g g g g4 g r
g8 g g g g g g4 g r
a4.( g8) a4 b b r2

% błagosłowien

s1*3 r4
b\p c4.\< c8\! b b c2 b8\< c\!
d4.( c8 b a b c) b2.\> r4\!
s1*2

% aliłuja

g8 g g g g g g4 g r
g8 g g g g g g4 g r
a4.( g8) a4 b b r2

% ispowiedajtiesia

s1*2 b8\f b c4. b8 a g
a( b g4.) g8 a b
d4. c8 b( c) a\> b g2\!
<<c f\f>> <<{e4 d8\>( c) b2\!} \\ {c4 a gis2}>>

% alliłuja
c8 b a g a b a4 a r
a8 b c b a b g4 g r
a2 a4 b b r2

% ispowiedajtiesia
r r4 b8\f b c4. b8 a gis e gis
a2 a4 b8 gis a4( gis) e r

% bogu niebiesnomu
r2 r4 b'8\f b
e4.( d8) c b a4
a4.( b8) c4 g8 g 
g4( a) a8 b c( a)
b b c2
a f4 g2( a4) e2 r4

% alliłuja
a8 a a a a a a4 a r
a8 a a a a a a4 a r
a4. a8 a d
b4. b8 b b
a4.-> a8 a2 <<a2. d>>

}

basNotes = \relative c' {

\tempo "Deciso" 4 = 80

% chwalitie, chwalitie imia gospodnie
\partial 4
g4\f a2 g
r8 g a a g4 e8 f g2 a\>~a4\!

% chwalitie imia gospodnie
a <<a2 g2>> <<a4 f4>> <<g2 e2>> <<a4 f4>>
<<{g2. f4 e2.} \\ {g4( f e) d e2.}>>

% chwalitie, chwalitie rabi gospoda
g4^"unis."\f a2 g
r8 g a a g4( e8) f g4. a8 a2\>~a4\!

% chwalitie rabi gospoda
<<a4 g4>> <<a2 f>> <<a4 g>> <<a2 f>> <<a4 e>>
<<{g2. f4 e2.} \\ {g4( f e) d e2.}>> r4

% alliłuja
\break \time 3/4 
c8 c c c c c d4 d r
d8 d d d d d e4 e r
a,4.( e'8) f4
\time 4/4 e e r

% błagosławien, błagosławien gospod
g4\f \break a4. a8 g4.
g8 a a g g a4 e8 f g2 a\>~a4\!

% błagosławien gospod
a4 <<a4. g>> <<a8 g>> <<a f>> <<a f>> <<a2 g>>
<<a8 f>> <<a e>> <<{g4. f8 g a s4} \\ {c,4.( d8 e f g d)}>> e2.

% żiwyj wo ijerusalimie
g4\f a4. g8 f g f e d2\> e\!

% alliłuja
\break \time 3/4
c8 c c c c c d4 d r
d8 d d d d d e4 e r
d4.( e8) f4
\time 4/4 e e r

% ispowiedajtiesia

b'8\f b \break c4. a8 g( f) e( f)
g4. d8 e4 f g8 g <<a4. f>> <<g8 e>> <<f d>> e
<<{f4 e4.} \\ {d4( c4.)}>>
<<e8 c>> <<f d>> <<g e>>
<<a4. f>> <<a8 f>> <<g4 e>>
<<f8 d>> <<f d>> <<e2 c>>
<<{a'2 g4 f e2} \\ {d c4 d e2}>>

% alliłuja
\time 3/4 \tempo "A tempo"
c8 c c c c c d4 d r
d8 d d d d d e4 e r
d4.( e8) f4
\time 4/4 e e r

% ispowiedajtiesia
e8\f e \tempo "Con nuovo respiro" f4. e8 d c
b b a4 b c b d e f e8 e a,4( b) c

% bogu niebiesnomu
e8\f e a4.( g8) f e d4 
c( d) e4. d8 c4( b)
a b c( d) e8 e e4

% jako w wiek
\time 3/4 e8 e e2 \tempo "Meno mosso"
d2 c4 bes2( a4) gis2 r4

% alliłuja
\tempo "Tempo I"
a8 gis a b cis a b4 b r
b8 cis d b cis d cis4 cis r
d4. fis8 a fis g4. d8 e d
\time 4/4 a4.-> a8 a2 <<d2. d,>>

\bar "|."

}

lyricsS = \lyricmode {

A -- lli -- łu -- ja, a -- lli -- łu -- ja,
a -- lli -- łu -- ja, a -- lli -- łu -- ja,
a -- lli -- łu -- ja.

A -- lli -- łu -- ja, a -- lli -- łu -- ja,
a -- lli -- łu -- ja, a -- lli -- łu -- ja,
a -- lli -- łu -- ja.

A -- lli -- łu -- ja, a -- lli -- łu -- ja,
a -- lli -- łu -- ja, a -- lli -- łu -- ja,
a -- lli -- łu -- ja.

I -- spo -- wie -- daj -- tie -- sja
Bo -- gu nie -- bie -- sno -- mu
ja -- ko "w wiek"
mi -- łost' Je -- go.

A -- lli -- łu -- ja, a -- lli -- łu -- ja,
a -- lli -- łu -- ja, a -- lli -- łu -- ja,
a -- lli -- łu -- ja, a -- lli -- łu -- ja,
a -- lli -- łu -- ja.
}

lyricsA = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

}

lyricsT = \lyricmode {

chwa -- li -- tie I -- mia Go -- spo -- dnie
chwa -- li -- tie ra -- bi Go -- spo -- da.

A -- lli -- łu -- ja, a -- lli -- łu -- ja,
a -- lli -- łu -- ja, a -- lli -- łu -- ja,
a -- lli -- łu -- ja.

bła -- go -- sło -- wien Go -- spod' ot Si -- o -- na

A -- lli -- łu -- ja, a -- lli -- łu -- ja,
a -- lli -- łu -- ja, a -- lli -- łu -- ja,
a -- lli -- łu -- ja.

}

lyricsB = \lyricmode {

Chwa -- li -- tie, chwa -- li -- tie I -- mia Go -- spo -- dnie
_ _ _ _ _
chwa -- li -- tie, chwa -- li -- tie ra -- bi Go -- spo -- da.
_ _ _ _ _

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

Bła -- go -- sło -- wien, bła -- go -- sła -- wien Go -- spod' ot Si -- o -- na
_ _ _ _ _ _ _ _ _

żi -- wyj wo I -- je -- ru -- sa -- li -- mie.

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

I -- spo -- wie -- daj -- tie -- sia Go -- spo -- die -- wi

}

\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop { 
        \set Staff.instrumentName = "Sopran"
        \sopNotes }
        \new Lyrics \lyricsto "Sop" \lyricsS
      \new Voice = Alt {
        \set Staff.instrumentName = "Alt"
        \altNotes }
        \new Lyrics \lyricsto "Alt" \lyricsA
      \new Voice = Ten {
        \set Staff.instrumentName = "Tenor"
        \clef "treble_8"
        \tenNotes }
        \new Lyrics \lyricsto "Ten" \lyricsT
      \new Voice = Bas {
        \set Staff.instrumentName = "Bas"
        \clef bass
        \basNotes }
        \new Lyrics \lyricsto "Bas" \lyricsB
    >>
  >>

  \layout { }

}
