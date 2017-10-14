\version "2.18.2"

\include "w_moim_ogrodeczku_common.ly"

\header {
  title = "W moim ogródeczku"
  composer = "m. Romuald Twardowski, sł. ludowe"
}

sopNotes = \relative c' {
fis8 fis fis d' cis4 b8( gis)
a a b gis fis4~fis8 r 

fis fis fis b a4 gis8( eis)
fis fis gis eis fis4. r8

cis'4 a fis8 fis d' cis 
b4 b e8 d cis b
a gis fis d' cis4 b8( gis)
a a b gis fis4. r8

cis'4 a fis8 fis d' cis 
b4 b e8 d cis b
a gis fis d' cis4 b8( gis)
a a b gis fis4. r8
\bar "|."
}

altNotes = \relative c' {
s2 fis8 fis fis d cis4 b8( cis)
d d e d fis2~fis4 r
fis8 e d cis fis4. r8

e e e e d e fis fis
fis4 e8( fis) gis b e, e
e e fis fis fis( cis) d4
cis8 fis gis eis fis4. r8

e e e e d e fis fis
fis4 e8( fis) gis b e, e
e e fis fis fis( cis) d4
cis8 fis gis eis fis4. r8

}

tenNotes = \relative c {
s2*4 fis8 fis fis d' cis4 b8( gis)
a a b gis fis fis fis gis

a a cis cis d cis b a 
gis a gis fis e gis a b 
cis cis d b a4 gis8( eis) 
fis d' b cis fis, fis fis gis

a a cis cis d cis b a 
gis a gis fis e gis a b 
cis cis d b a4 gis8( eis) 
fis d' b cis fis,4. r8
}

lyricsAs = \lyricmode {
 "1. W mo" -- im o -- gró -- de -- czku ro -- śnie ró -- ży -- czka
 na -- pój mi Ma -- niu -- siu me -- go ko -- ni -- czka.
 Nie chcę nie na -- po -- ję bo się ko -- nia bo -- ję 
 bo się ko -- nia bo -- ję bom je -- szcze mło -- da.
 Nie chcę nie na -- po -- ję bo się ko -- nia bo -- ję 
 bo się ko -- nia bo -- ję bom je -- szcze mło -- da.
}

lyricsBs = \lyricmode {
 "2. W mo" -- im o -- gró -- de -- czku ro -- śnie li -- li -- ja
 po -- wiedz mi dziew -- czy -- no czy bę -- dziesz mo -- ja.
 Skąd -- że ja mam wie -- dzieć i to -- bie po -- wie -- dzieć
 skąd -- że ja mam wie -- dzieć czy mnie ma -- ma da.
 Skąd -- że ja mam wie -- dzieć i to -- bie po -- wie -- dzieć
 skąd -- że ja mam wie -- dzieć czy mnie ma -- ma da.
}

lyricsCs = \lyricmode {
 "3. Mmm..." _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
 Już jej ko -- chać nie chcę bo mnie bo -- li ser -- ce
 że mo -- ja dziew -- czy -- na za in -- ne -- go szła.
 Już jej ko -- chać nie chcę bo mnie bo -- li ser -- ce
 że mo -- ja dziew -- czy -- na za in -- ne -- go szła.
}

lyricsAa = \lyricmode {
 "1. W mo" -- im o -- gró -- de -- czku ro -- śnie ró -- ży -- czka
 me -- go ko -- ni -- czka.
 Nie chcę, nie chcę, nie na -- po -- ję bo się ko -- nia bo -- ję 
 bo się ko -- nia bo -- ję bom je -- szcze mło -- da.
 Nie chcę, nie chcę, nie na -- po -- ję bo się ko -- nia bo -- ję 
 bo się ko -- nia bo -- ję bom je -- szcze mło -- da.
}

lyricsBa = \lyricmode {
 "2. W mo" -- im o -- gró -- de -- czku ro -- śnie li -- li -- ja
 czy bę -- dziesz mo -- ja.
 Skąd -- że skąd -- że ja mam wie -- dzieć i to -- bie po -- wie -- dzieć
 skąd -- że ja mam wie -- dzieć czy mnie ma -- ma da.
 Skąd -- że skąd -- że ja mam wie -- dzieć i to -- bie po -- wie -- dzieć
 skąd -- że ja mam wie -- dzieć czy mnie ma -- ma da.
}

lyricsCa = \lyricmode {
 "3. Mmm..." _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
 Już jej już jej ko -- chać nie chcę bo mnie bo -- li ser -- ce
 że mo -- ja dziew -- czy -- na za in -- ne -- go szła.
 Już jej już jej ko -- chać nie chcę bo mnie bo -- li ser -- ce
 że mo -- ja dziew -- czy -- na za in -- ne -- go szła.
}


lyricsAb = \lyricmode {
 "1. Na" -- pój mi Ma -- niu -- siu me -- go ko -- nicz -- ka ko -- nicz -- ka
 Nie chcę, nie chcę, nie na -- po -- ję bo się ko -- nia bo -- ję, bo -- ję,
 bo się ko -- nia bo -- ję bom je -- szcze mło -- da, bom mło -- da
 Nie chcę, nie chcę, nie na -- po -- ję bo się ko -- nia bo -- ję, bo -- ję,
 bo się ko -- nia bo -- ję bom je -- szcze mło -- da.
}

lyricsBb = \lyricmode {
 "2. Po" -- wiedz mi dziew -- czy -- no, czy bę -- dziesz mo -- ja oj mo -- ja
 Skąd -- że skąd -- że ja mam wie -- dzieć i to -- bie to -- bie po -- wie -- dzieć
 skąd -- że ja mam wie -- dzieć czy mnie ma -- ma da oj ma -- ma
 Skąd -- że skąd -- że ja mam wie -- dzieć i to -- bie to -- bie po -- wie -- dzieć
 skąd -- że ja mam wie -- dzieć czy mnie ma -- ma da.
}

lyricsCb = \lyricmode {
 "3. A" ja już nie ko -- cham dziew -- czy -- ny mo -- jej oj mo -- jej 
 Już jej już jej ko -- chać nie chcę bo mnie bo mnie bo -- li ser -- ce
 że mo -- ja dziew -- czy -- na za in -- ne -- go szła oj po -- szła
 Już jej już jej ko -- chać nie chcę bo mnie bo mnie bo -- li ser -- ce
 że mo -- ja dziew -- czy -- na za in -- ne -- go szła.
}


\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop { 
        \set Staff.instrumentName = "Sopran"
        \time 2/4
        \key a \major
        \sopNotes }
        \new Lyrics \lyricsto "Sop" \lyricsAs
        \new Lyrics \lyricsto "Sop" \lyricsBs
        \new Lyrics \lyricsto "Sop" \lyricsCs
      \new Voice = Alt {
        \set Staff.instrumentName = "Alt"
        \key a \major
        \altNotes }
        \new Lyrics \lyricsto "Alt" \lyricsAa
        \new Lyrics \lyricsto "Alt" \lyricsBa
        \new Lyrics \lyricsto "Alt" \lyricsCa
      \new Voice = Ten {
        \set Staff.instrumentName = "Baryton"
        \clef bass
        \key a \major
        \tenNotes }
        \new Lyrics \lyricsto "Ten" \lyricsAb
        \new Lyrics \lyricsto "Ten" \lyricsBb
        \new Lyrics \lyricsto "Ten" \lyricsCb
    >>
  >>

  \layout { }
  %\midi { }

}
