\version "2.18.2"

\include "../common.ly"

\header {
  title = "Nie było miejsca dla Ciebie"
  composer = "opr. Paweł Szajna (2017)"
}

\paper {
  print-page-number = ##f 
}

sopNotes = \relative c' {

\repeat volta 2 {
d4\mp cis d bes'2 bes4 bes a2 a~a4
d,4 cis d a'2 a4 bes g2 g~g4
d4\mf cis d bes'2 bes4 bes a2 a~a4
d,4 cis d a'2 a4 bes g2 g~g4

g\f bes c d2 d4 es c2 c~c4
d, fis a c2 c4 d bes2 bes~bes4
d,\mf cis d bes'2 bes4 bes a2 a~a4
d, cis d a'2 a4 bes g2 g~g4
}

d\f cis d d'2 d~d4\breathe
g, bes d es2 es~es1\fermata\breathe
\time 2/4 es4\p( f) \time 4/4 g1 g\fermata
\bar "|."

}

altNotes = \relative c' {
d4 cis d g2 f4 g g( e) fis( d d)
c cis d d( fis) fis( g) r es d( c) d
bes bes c d( e) f f f( g) g( e fis)
c bes d fis2 g4( d) r es d( c) d

d g a a( f) bes g g( bes) a2( fis4)
d d d es( fis) fis2 r4 g f( es) d
d cis d g( e) f g g( e) fis( d d)
c cis d d( fis) fis( g) r es d( c) d

s2. r4 d es f g2 g2
r4 g c bes a2 a\fermata\breathe
s2 c4( bes) c( a) b1\fermata
}

tenNotes = \relative c' {
d4 cis d d( e) d d d2 d( c4)
a cis d a( c!) d2 r4 c bes( a) bes
g e fis f!( g) as bes c( cis) d2( c4)
a g c d( es) d( bes) r c bes( a) bes

bes es es bes( d) f f f2 f4( es a,)
d d c c( a) a( c) r es d( c) bes
d cis d d( cis) d d d2 d( c4)
a cis d a( c!) d2 r4 c bes( a) bes

s2. r4 bes c d es2 bes
r4 bes c c c2 c\fermata\breathe
s2 es4( d) c( es) d1\fermata
}

basNotes = \relative c' {
d4 cis d bes( cis) bes g a2 fis( d4)
fis cis d fis( es) d d g2 g( g,4)
g g a bes2 bes4 d f( e) d2~d4
fis e d d( c) bes fis g2( d'4 fis) g

f es c bes2 bes4 bes f'2 f4( a, d)
d' c fis, g( es) d fis g2 g~g4
d' cis d bes( g) bes bes, a'2 fis( d4)
fis cis d fis( es) d d g2 g( g,4)

s2. r4 g' g g es2 es
r4 es c es f2 f\fermata\breathe
s2 c4( d) es( f) g1\fermata
}

lyricsA = \lyricmode {
 "1. Nie" by -- ło miej -- sca dla Cie -- bie
 w_Be -- tle -- jem w_ża -- dnej go -- spo -- dzie
 i na -- ro -- dzi -- łeś się, Je -- zu
 "w staj" -- ni, u -- bó -- stwie i chło -- dzie,

 nie by -- ło miej -- sca, choć sze -- dłeś
 ja -- ko Zba -- wi -- ciel na zie -- mię,
 by wyr -- wać "z czar" -- ta nie -- wo -- li
 nie -- szczę -- sne A -- da -- ma ple -- mię.

 Nie by -- ło miej -- sca,
 nie by -- ło miej -- sca
 dla Cie -- bie.
}

lyricsB = \lyricmode {
 "2. Nie" by -- ło miej -- sca, choć chcia -- łeś
 lu -- dzkość przy -- tu -- lić do ło -- na
 i po -- dać "z krzy" -- ża grze -- szni -- kom
 zba -- wcze, skrwa -- wio -- ne ra -- mio -- na,
 
 nie by -- ło miej -- sca, choć sze -- dłeś
 o -- gień mi -- ło -- ści za -- pa -- lić
 i przez Twą mę -- kę naj -- droż -- szą
 świat od za -- gła -- dy o -- ca -- lić.
}

lyricsC = \lyricmode {
 "3. Nie" by -- ło miej -- sca, choć chcia -- łeś
 być dla nas ży -- wo -- ta chle -- bem
 i wszy -- stkich hoj -- nie ob -- da -- rzyć
 wie -- czną ra -- do -- ścią i nie -- bem,

 nie by -- ło miej -- sca, choć chcia -- łeś
 na trud i na ból nie -- zmier -- ny,
 ja -- ko Ba -- ra -- nek o -- fiar -- ny
 ci -- chy, słod -- ki, mi -- ło -- sier -- ny.
}

\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop { 
        \set Staff.instrumentName = "Sopran"
        \time 4/4
        \key g \minor \partial 2.
        \sopNotes }
        \new Lyrics \lyricsto "Sop" \lyricsA
        \new Lyrics \lyricsto "Sop" \lyricsB
        \new Lyrics \lyricsto "Sop" \lyricsC
      \new Voice = Alt {
        \set Staff.instrumentName = "Alt"
        \key g \minor
        \altNotes }
        \new Lyrics \lyricsto "Alt" \lyricsA
        \new Lyrics \lyricsto "Alt" \lyricsB
        \new Lyrics \lyricsto "Alt" \lyricsC
      \new Voice = Ten {
        \set Staff.instrumentName = "Tenor"
        \clef "treble_8"
        \key g \minor
        \tenNotes }
        \new Lyrics \lyricsto "Ten" \lyricsA
        \new Lyrics \lyricsto "Ten" \lyricsB
        \new Lyrics \lyricsto "Ten" \lyricsC
      \new Voice = Bas {
        \set Staff.instrumentName = "Bas"
        \clef bass
        \key g \minor
        \basNotes }
        \new Lyrics \lyricsto "Bas" \lyricsA
        \new Lyrics \lyricsto "Bas" \lyricsB
        \new Lyrics \lyricsto "Bas" \lyricsC
    >>
  >>

  \layout { }

}
