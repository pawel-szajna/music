\version "2.18.2"

\include "../common.ly"


\header {
  title = "Dziś późno pójdę spać"
}

sopNotes = \relative c' {

\autoBeamOff
\key d \minor

\time 4/4
\tempo 4 = 145

s8*3
f2-.\p f-. f-. f-.
e-. e-. e-. e-.
f-. f-. f-. f-.
e-. e-. e-.
r8 f\mf g f
g g4. f8 g4.
f2 \breathe f8 f f f
e4 e e8 f4.
e2 \breathe e8 e f e
d4 f d2~
d \breathe f8 f f f
e f4. e2~ \bar "||"
e r8 e\mf f e
d4 f d2~
d \breathe d-.\mp
c-. c-.
c-. r8 e\mf f e
d4 f d2~
d \breathe d-.\mp
c-. c-.
c-. r8 f8\mf g f
g g4. f8 g4.
f2 \breathe f8 f f f
e e4. e8 f4.
e \breathe e8 e e f e
d4 f e2
r4. e8\f f f f f
e f4. e2~
e2. \breathe \mark \default c4\mp

f2 a
bes4 a g8[( f)] f4
g2 bes
a2. \breathe c,4
f2 a
bes4 a g f
g2 f
d2. \breathe c4
f2 a
bes4 a g8[( f)] f4
g2 bes
a8([ g] f2) \breathe c4
f2 a
bes4 a g f
g2 r4 f\mf\<

d( f g8) \mark \default g as g \bar "||" \key f \minor
f4\f as f2~f r8 as8 as as g c,4 c8 c4 c~c2
r8 g' as g f4 as f2~f r8 as as as g c,4 c8 c4 c~c2 \breathe
as'8 as bes as bes bes4 bes8 as bes4. as4 \breathe
c,8 c as' as as as g4 g8 g g as4. g \breathe
g8 g g as g f4 as f2~f4. \breathe
as8 as as as as g as4. g2~g2. \breathe \mark \default

es4\ff \bar "||" as2 c des4 c bes8([ as]) as4 bes2 des c2. \breathe
es,4 as2 c des4 c bes as bes2 as f2. \breathe
es4 as2 c des4 c bes8([ as]) as4 bes2 des c8([ bes] as2) \breathe
es4 as2 c des4 c bes as bes2 r4 as\mf f1 \bar "||" \mark \default

r2 as\p( g c,)~c1 \breathe
f2( as)~as2 \breathe
as( g1)~g \breathe
f2\mf\<( c')~c \breathe
c( bes g)~g1 \breathe
f2\f\<( c')~c \breathe
c( bes1)~bes2.\ff \breathe \mark \default

es,4 \bar "||" as2 c des4 c bes8([ as]) as4 bes2 des c2. \breathe
es,4 as2 c des4 c bes as bes2 as f2. \breathe
es4 as2 c des4 c bes as bes2 des c8([ bes] as2) \breathe
es4 as2 c des4 c bes as bes2 r\fermata as2\p f \bar "|."

}

altNotes = \relative c' {

\autoBeamOff
\key d \minor

s8*3 a2\p-. a-. a-. a-.
c-. c-. c-. c-.
a-. a-. a-. a-.
c-. c-. c-. c-.\mp
a-. a-. a-. a-.
c-. c-. c-. c-.
d-. d-. d-. d-.
c-. c-. c-. c-.\mp
a-. a-. a-.
r8 f'\mf f f e4 a,8 a a([ g]) a4~a2 \breathe
a-.\mp a-. a-. a-.
r8 f'\mf f f e a,4 a8 a([ g]) a4~a2 \breathe
a-.\mp a-. a-. a-. a-.
c-. c-. c-. c-.
d-. d-. r4.
e8\f f f e d e d4. e2( b g4) \breathe

g\p( c1 d e d2. c4~c1 d e d2. c4~c1 d e d2. c4~c1 d e2)
r4 g,\mf\< a( d)~d8 d es es \key f \minor

f4\f( es c) es f( es c8) c es f es c4 c8 c4 c~c2 \breathe
bes4 es8 es f4( es c) es f( es c8) c es f es c4 c8 c4 c~c2 \breathe
f8 f g g f f4 f8 f f4. f4 \breathe
c8 c f f f f es4 es8 es es f4. f \breathe
es8 es es f es f4 f es( f)~ f4. \breathe
f8 f f f f g f4. es2~es2. \breathe

es4\ff as2 as4( g) f f f f g2 g as2. \breathe
es4 as2 as4( g) f f f f g2 es c2. \breathe
es4 as2 as4( g) f f f f g2 g as8([ g] as2) \breathe
es4 as2 as4( g) f f f f g2 r4 es\mf c1 r2

c\pp( es c~c bes) \breathe
c1( f2) \breathe
f~f1( es) \breathe
f2\mf\<~f4( g as2) \breathe
as( g1 f2 es) \breathe
f2\f\<~f4( g as2) \breathe
as( f g4 as g2.\ff) \breathe

es4 as2 as4( g) f f f f g2 g as2. \breathe
es4 as2 as4( g) f f f f g2 es c2. \breathe
es4 as2 as4( g) f f f f g2 g as8([ g] as2) \breathe
es4 es2 es f4 f f f es2 r\fermata g\p f

}

tenNotes = \relative c {

\autoBeamOff
\key d \minor

\partial 8*3

e8\mf f e \mark \default
d4 f d2~
d \breathe d-.\p
e-. e-.
e-. r8 e\mf f e
d4 f d2~
d \breathe d-.\p
e-. e-.
e-. r8 f\mf g f
g g4. f8 g4.
f2 \breathe f8 f f f
e4 e e8 f4.
e2 \breathe e8 e f e
d4 f d2~
d \breathe f8 f f f
e f4. e2~
e e-.\mp
f-. f-.
f-. f-.
e-. e-.
e-. e-.
f-. f-.
f-. f-.
e-. e-.
e-. r8 f\mf g f
g g4. f8 g4.
f2 \breathe f8 f f f
e e4. e8 f4.
e4. \breathe e8 e e f e
d4 f d2
r4. e8\f f f f f
e f4. e2(
f e4) \breathe e\p( \bar "||"

f1 g~g f~f g~g f~f g~g f~f g~
g2) r4 g\mf\<
f( a bes8) bes bes bes \bar "||" \key f \minor

c4\f c as2~
as r8 as as c
c c4 c8 c4 c~
c( bes) \breathe
g4 bes8 bes c4 c as2~as r8
as as c c c4 c8 c4 c~c2 \breathe
c8 c es es c c4 c8 c des4. c4 \breathe
as8 as c c c c c4 c8 c c c4. c \breathe
c8 c c c c c4 c c2( des4.) \breathe
des8 des des des des c c4. c2( bes2.) \breathe

es4\ff es2 es f4 des8([ c]) bes([ c]) des4 bes2 bes c2. \breathe
es4 es2 es f4 des8([ c]) bes([ c]) des4 es2 bes as2. \breathe
es'4 es2 es f4 des8([ c]) bes([ c]) des4 bes2 bes c2. \breathe
es4 es2 es f4 des8([ c]) bes([ c]) des4 es2 r4 bes\mf as1 r2

f2\pp( g1)~g \breathe
as2( f c') \breathe
c~c1~c2( bes) \breathe
as4\mf\<( bes c2)~c \breathe
c~c4( des c2)~c2.( bes4) \breathe
as4\f\<( bes c2)~c \breathe
c( des1 bes2.\ff) \breathe

es4 es2 es f4 des8([ c]) bes([ c]) des4 bes2 bes c2. \breathe
es4 es2 es f4 des8([ c]) bes([ c]) des4 es2 bes as2. \breathe
es'4 es2 es bes4 bes8([ c]) des4 des bes2 bes c2. \breathe
bes4 c2 es des4 des des des es2 r\fermata es\p f

}

basNotes = \relative c {

\autoBeamOff
\key d \minor

\partial 8*3

e8\mf f e
d2-.\p d-.
d-. r8 f8\mf f f
e4 a, a a~a2 \breathe
a-.\p d-. d-. d-.
r8 f\mf f f e4 a,8 a a4 a~a2 \breathe
a2-.\mp d-. d-. d-. d-.
a-. a-. a-. a-.
bes-. bes-. bes-. bes-.
c-. c-. c-. c-.\mp
d-. d-. d-. d-.
a-. a-. a-. a-.
d-. d-. d-. d-.
a-. a-. a-. a-.\mp
d-. d-. d-. d-.
a-. a-. a-. a-.
bes-. bes-.
r4. e8\f f f e d e d4. e2( d bes4) \breathe

bes\mp a2 c d4 c bes a c2 c d2. \breathe
a4 a2 c d4 c bes a c2 c d2. \breathe
a4 a2 c d4 c bes a c2 c d2. \breathe
a4 a2 c d4 c bes a c2 r4
c\mf\< d( bes es8)

es c c \key f \minor
f2.\f es4 c( es f8)
f f es c c4 c8 c4 c~c2 r8
c c es f2. es4 c( es f8)
f f es c c4 c8 c4 c~c2 \breathe
c8 c c c f f4 f8 f f4. f4 \breathe
f8 f f f f f c4 c8 c c c4. c \breathe
c8 c c c c f4 f f2( des4.) \breathe
des8 des des des des es es4. es2~es2. \breathe

es4\ff c2 as bes4 bes des des es2 des f2. \breathe
es4 c2 as bes4 bes des des es2 es f2. \breathe
es4 c2 as bes4 bes des des es2 des f2. \breathe
es4 c2 as bes4 bes des des es2 r4 es\mf\>

f1~f\pp c~c f~f c~c f\mf\<~f c~c f\f\<~f bes,( es2.\ff) \breathe

es4 c2 as bes4 bes des des es2 des f2. \breathe
es4 c2 as bes4 bes des des es2 es f2. \breathe
es4 c2 as bes4 bes des des es2 des f2. \breathe
g4 as2 as bes4 bes as as g2 r\fermata r1

}


lyricsS = \lyricmode {
  Aa, aa, aa, aa… _ _ _ _ _ _ _ _ _ _ _
  i nie wiem o czym my -- śleć mam
  że -- by mi się przy -- śnił ta -- ki świat,
  "w któ" -- rym się nie bo -- ję spać,
  "w któ" -- rym się nie bo -- ję spać.
  
  Już na mnie i -- dzie tłum
  aa, aa, aa, aa,
  Nie mo -- gę u -- ciec mu,
  aa, aa, aa, aa,
  gwiazd już nie wi -- dać, no bo jak,
  kie -- dy łu -- na "z zie" -- mi bi -- je tak,
  jak gdy -- by chcia -- ła za -- lać świat,
  jak gdy -- by chcia -- ła za -- lać świat.
  
  Choć nie chcę bu -- dzić się, nie u -- miem spać,
  świat dzi -- wny jest jak sen, a sen jak świat,
  choć nie chcę bu -- dzić się, nie u -- miem spać,
  świat dzi -- wny jest jak sen, a sen jak świat,
  
  nie mo -- gę ru -- szyć "w przód,"
  no -- gi skle -- jo -- ne taś -- ma -- mi,
  za -- czy -- nam spa -- dać "w dół,"
  spa -- dam do gó -- ry no -- ga -- mi,
  my -- ślę so -- bie: za -- raz o -- bu -- dzę się
  lecz im bar -- dziej spa -- dam, tym bar -- dziej wi -- dzę, że
  to wszy -- stko chy -- ba nie jest sen,
  to wszy -- stko chy -- ba nie jest sen.
  
  Choć nie chcę bu -- dzić się, nie u -- miem spać,
  świat dzi -- wny jest jak sen, a sen jak świat,
  choć nie chcę bu -- dzić się, nie u -- miem spać,
  świat dzi -- wny jest jak sen, a sen jak świat.
  
  Aaa, aaa… _ _ _ _ _
  
  Choć nie chcę bu -- dzić się, nie u -- miem spać,
  świat dzi -- wny jest jak sen, a sen jak świat,
  choć nie chcę bu -- dzić się, nie u -- miem spać,
  świat dzi -- wny jest jak sen, a sen… jak świat.
}

lyricsA = \lyricmode {
  Aa, aa, aa, aa… _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  i dep -- cze wszy -- sto po dro -- dze,
  aa, aa, aa, aa,
  on też przed so -- bą nie mo -- że,
  aa, aa, aa… _ _ _ _ _ _ _ _
  jak gdy -- by chcia -- ła za -- lać świat.
  
  Uuu… jak świat,
  nie mo -- gę ru -- szyć "w przód,"
  no -- gi skle -- jo -- ne taś -- ma -- mi,
  za -- czy -- nam spa -- dać "w dół,"
  spa -- dam do gó -- ry no -- ga -- mi,
  my -- ślę so -- bie: za -- raz o -- bu -- dzę się
  lecz im bar -- dziej spa -- dam, tym bar -- dziej wi -- dzę, że
  to wszy -- stko chy -- ba nie jest sen,
  to wszy -- stko chy -- ba nie jest sen.
  
  Choć nie chcę bu -- dzić się, nie u -- miem spać,
  świat dzi -- wny jest jak sen, a sen jak świat,
  choć nie chcę bu -- dzić się, nie u -- miem spać,
  świat dzi -- wny jest jak sen, a sen jak świat.
  
  Aaa, aaa… _ _ _ _ _
  
  Choć nie chcę bu -- dzić się, nie u -- miem spać,
  świat dzi -- wny jest jak sen, a sen jak świat,
  choć nie chcę bu -- dzić się, nie u -- miem spać,
  świat dzi -- wny jest jak sen, a sen… jak świat.
}

lyricsT = \lyricmode {
  Dziś póź -- no pój - dę spać, aa, aa, aa,
  o -- twar -- te o -- czy mam aa, aa, aa, aa
  i nie wiem o czym my -- śleć mam
  że -- by mi się przy -- śnił ta -- ki świat,
  "w któ" -- rym się nie bo -- ję spać,
  "w któ" -- rym się nie bo -- ję spać.
  Aa, aa, aa… _ _ _ _ _ _ _ _ _ _ _ _ _
  gwiazd już nie wi -- dać, no bo jak,
  kie -- dy łu -- na "z zie" -- mi bi -- je tak,
  jak gdy -- by chcia -- ła za -- lać świat,
  jak gdy -- by chcia -- ła za -- lać świat.
  
  Uuu… jak świat,
  nie mo -- gę ru -- szyć "w przód,"
  no -- gi skle -- jo -- ne taś -- ma -- mi,
  za -- czy -- nam spa -- dać "w dół,"
  spa -- dam do gó -- ry no -- ga -- mi,
  my -- ślę so -- bie: za -- raz o -- bu -- dzę się
  lecz im bar -- dziej spa -- dam, tym bar -- dziej wi -- dzę, że
  to wszy -- stko chy -- ba nie jest sen,
  to wszy -- stko chy -- ba nie jest sen.
  
  Choć nie chcę bu -- dzić się, nie u -- miem spać,
  świat dzi -- wny jest jak sen, a sen jak świat,
  choć nie chcę bu -- dzić się, nie u -- miem spać,
  świat dzi -- wny jest jak sen, a sen jak świat.
  
  Aaa, aaa… _ _ _ _ _
  
  Choć nie chcę bu -- dzić się, nie u -- miem spać,
  świat dzi -- wny jest jak sen, a sen jak świat,
  choć nie chcę bu -- dzić się, nie u -- miem spać,
  świat dzi -- wny jest jak sen, a sen… jak świat.
}

lyricsB = \lyricmode {
  Dziś póź -- no aa, aa, aa,
  gdy wszy -- scy bę -- dą "w łóż" -- kach,
  aa, aa, aa, aa,
  a gło -- wa peł -- na i pus -- ta,
  aa, aa, aa… _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  jak gdy -- by chcia -- ła za -- lać świat.
  
  Choć nie chcę bu -- dzić się, nie u -- miem spać,
  świat dzi -- wny jest jak sen, a sen jak świat,
  choć nie chcę bu -- dzić się, nie u -- miem spać,
  świat dzi -- wny jest jak sen, a sen jak świat,
  
  nie mo -- gę ru -- szyć "w przód,"
  no -- gi skle -- jo -- ne taś -- ma -- mi,
  za -- czy -- nam spa -- dać "w dół,"
  spa -- dam do gó -- ry no -- ga -- mi,
  my -- ślę so -- bie: za -- raz o -- bu -- dzę się
  lecz im bar -- dziej spa -- dam, tym bar -- dziej wi -- dzę, że
  to wszy -- stko chy -- ba nie jest sen,
  to wszy -- stko chy -- ba nie jest sen.
  
  Choć nie chcę bu -- dzić się, nie u -- miem spać,
  świat dzi -- wny jest jak sen, a sen jak świat,
  choć nie chcę bu -- dzić się, nie u -- miem spać,
  świat dzi -- wny jest jak sen, a sen jak
  aaa, aaa… _ _ _ _ _ _
  
  Choć nie chcę bu -- dzić się, nie u -- miem spać,
  świat dzi -- wny jest jak sen, a sen jak świat,
  choć nie chcę bu -- dzić się, nie u -- miem spać,
  świat dzi -- wny jest jak sen, a sen…
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
