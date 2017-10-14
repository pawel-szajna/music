\version "2.18.2"

\include "../common.ly"

\header {
  title = "Ty tylko mnie poprowadź"
}

\paper {
print-page-number = ##f
ragged-last-bottom = ##f
}

\layout {
%  ragged-last = ##t
}

soloNotes = \relative c' {
\partial 8

e8 a a a a4 e8 e fis~fis4. r2
fis8 gis gis4 gis4. e8 d~d cis4. r
cis8 d d d d4 e fis8 a2 gis e1~e2. r8

e a a a a4 e8 e fis~fis fis4 r2
fis8 gis gis gis gis4 gis8 e d~d cis4. r
cis8 d d d d4 e fis8 a2 gis a1~a2. s8
}

sopNotes = \relative c' {
\partial 8 s8

e1( d e~e fis2.~fis8) fis e2 e e1~e
e( d e~e fis2.~fis8) fis e2 e a1~a2. r8

a 
\pageBreak
\repeat volta 2 {
d d4 d4. a8 gis~gis gis4.~gis2
cis8 cis cis b4 cis8 b a~a a2.
a8 \break d d4 d4. a8 gis~
}
\alternative {
{ gis gis4. cis4 b a1~a2. r8 a \break } 
{ gis gis4. cis4 b a1~a }
}
\bar "|."

}

altNotes = \relative c' {
\partial 8 s8

cis1~cis~cis~cis~cis2.~cis8 cis b2 d cis1( b2 d)
cis1~cis~cis~cis~cis2.~cis8 cis b2 d e1~e2. r8

e fis fis4 fis4. fis8 fis( e) e4.~e2
e8 e e f4 f8 gis4 fis!2. g4 
            %mą   dro -- gę; tylko
fis8 fis4 fis4. fis8 fis( e) e4. e4 e fis1~(fis2 g)
e8 e4. e4 e e( fis e d e1)

}

tenNotes = \relative c' {
\partial 8 s8

a1~a gis~gis a gis a gis2 b
a1~a gis~gis a~a2 b cis1~cis

a8 a4 a4. d8 d( b) b4.~(b4 d)
a8 a a gis4 gis8 cis4 cis2. cis4
a8 a4 a4. d8 d( b) b4. cis4 d d1( cis)
b8 b4. cis4 d d2( cis4 b cis1)

}

basNotes = \relative c' {
\partial 8 s8

a1 d,2 a'4 fis e2 gis,4 b cis2 gis'4 e d1 e a, e'
a, d2 a'4 fis e2 gis,4 b cis2 gis'4 e d1 e2 b' a1 g

d8 d4 d4. d8 d( e) e4.( d4 b)
a8 a a cis4 cis8 f4 fis!4.( e4 fis8) e4
d8 d4 d4. d8 d( e) e4. e4 b d1( fis2 e)
e8 e4. gis4 gis a1( a,)

}

lyricsSoloA = \lyricmode {
\once \override LyricText.self-alignment-X = #LEFT
"1. Gdy" dro -- gi po -- my -- li los zły
i o -- czy mgłą za -- snu -- je,
miej w_so -- bie tę u -- fność nie lę -- kaj -- się.
A kie -- dy gniew świat ci prze -- sło -- ni
i za -- zdrość jak chwast za -- kieł -- ku -- je,
miej w_so -- bie tę u -- fność nie lę -- kaj -- się.
}

lyricsSoloB = \lyricmode {
\once \override LyricText.self-alignment-X = #LEFT
"2. Po" -- pro -- wadź jak je -- go pro -- wadzisz
przez drogi naj -- pro -- stsze z_mo -- żliwych
i po -- każ mi je -- dną tę je -- dną z_nich.
A kie -- dy już głos twój u -- sły -- szę
i kar -- mić się bę -- dę nim co dzień,
miej w_so -- bie -- tę u -- fność nie lę -- kaj się.

}

lyricsS = \lyricmode {
Mmm… nie lę -- kaj się. Mmm… nie lę -- kaj się. Ty
Tyl -- ko mnie po -- pro -- wadź,
To -- bie po -- wie -- rzam mą dro -- gę,
Ty tyl -- ko mnie po -- pro -- wadź,
Pa -- nie mój.
Ty \skip 1 "– wadź," Pa -- nie mój.
}

lyricsA = \lyricmode {
Mmm… nie lę -- kaj się. Mmm… nie lę -- kaj się. Ty
Tyl -- ko mnie po -- pro -- wadź,
To -- bie po -- wie -- rzam mą dro -- gę,
tyl -- ko mnie po -- pro -- wadź,
Pa -- nie mój.
\skip 1 "– wadź," Pa -- nie mój.
}

lyricsT = \lyricmode {
Mmm… \repeat unfold 11 { \skip 1 }
Tyl -- ko mnie po -- pro -- wadź,
To -- bie po -- wie -- rzam mą dro -- gę,
tyl -- ko mnie po -- pro -- wadź,
Pa -- nie mój.
\skip 1 "– wadź," Pa -- nie mój.
}

lyricsB = \lyricmode {
\repeat unfold 29 { \skip 1 }
Tyl -- ko mnie po -- pro -- wadź,
To -- bie po -- wie -- rzam mą dro -- gę,
tyl -- ko mnie po -- pro -- wadź,
Pa -- nie mój.
\skip 1 "– wadź," Pa -- nie mój.
}

\score {
  <<
    \new Staff <<
      \set Staff.instrumentName = "Solo sopran"
      \set Staff.fontSize = #-2
      \new Voice = Solo {
        \key a \major
        \soloNotes
      }
      \new Lyrics \lyricsto "Solo" \lyricsSoloA
      \new Lyrics \lyricsto "Solo" \lyricsSoloB
    >>
    \new ChoirStaff <<
     \new Staff = women <<
      \new Voice = Sop { 
        \voiceOne
        %\set Staff.instrumentName = "Sopran"
        \key a \major
        \sopNotes }
        \new Lyrics \lyricsto "Sop" \lyricsS
      \new Voice = Alt {
        \voiceTwo
        %\set Staff.instrumentName = "Alt"
        \key a \major
        \altNotes }
        \new Lyrics \lyricsto "Alt" \lyricsA
     >>
     \new Staff = men <<
      \new Voice = Ten {
        %\set Staff.instrumentName = "Tenor"
        \voiceOne
        \clef bass
        \key a \major
        \tenNotes }
        \new Lyrics \lyricsto "Ten" \lyricsT
      \new Voice = Bas {
        \voiceTwo
        %\set Staff.instrumentName = "Bas"
        \clef bass
        \key a \major
        \basNotes }
        \new Lyrics \lyricsto "Bas" \lyricsB
     >>
    >>
  >>

  \layout { }
  %\midi { }

}
