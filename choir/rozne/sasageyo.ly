\version "2.18.2"

\include "../common.ly"

\header {
  title = "Shinzou wo Sasageyo!"
}

sopNotes = \relative c'' {

\partial 8

g8 c4. d8 d4.
%{f8 f4. e8 e2

c2 d8 c b
a8 a4. g8 g4. \breathe

    g8 c4. d8 d4.
    f8 f4. e8 e4.
    
    d8 c4. c8 d c b a
    a4. b8 gis4. \breathe
    
b8 c4. d8 d4.%}
f8 f4. e8 e2

c2 d8 c b
a8 a4. g8 g4. \breathe

    g8 c4. d8 d4.
    f8 f4. e8 e4.
    
    d8 c4. c8 d c d f
    a4. gis8 gis4. \breathe
    
dis8 \bar "||" \key e \major e4. fis8 fis4.
a8 a4. gis8 gis2

e2 fis8 e dis cis
cis4. b8 b4. \breathe

    b8 e4. fis8 fis4.
    a8 a4. gis8 gis4.
    
    fis8 e4. e8 fis e dis b
    cis2.\fermata

\bar "|."

}

altNotes = \relative c'' {

g8 e4. g8 g4.
%{a8 a4. c8 c2

c4.( b8) a a a
g f4. e8 e4. \breathe

    e8 e4. g8 g4.
    a8 a4. c8 c4.
    
    a8 a4. a8 g8 g g f
    e4. e8 e4. \breathe

f8 e4. g8 g4.%}
a8 a4. c8 c2

c4.( b8) a a a
g f4. e8 e4. \breathe

    e8 e4. g8 g4.
    a8 a4. c8 c4.
    
    a8 a4. a8 g g a a
    a4. b8 b4. \breathe

b8 \key e \major gis4. b8 b4.
cis8 cis4. b8 b2

cis2 cis8 cis cis b
a4. gis8 gis4. \breathe

    gis8 gis4. b8 b4.
    cis8 cis4. cis8 cis4.
    cis8 cis4. cis8 b b gis gis
    gis2.\fermata

}

tenNotes = \relative c' {
  
g8 g4. b8 b4.
%{c8 c4. g8 g2

a a8 a a
c c4. c8 c4. \breathe

    c8 a4. b8 b4.
    d8 d4. a8 a4.

    a8 c4. c8 b4 d
    c4. b8 b4. \breathe
    
b8 g4. b8 b4.%}
c8 c4. g8 g2

a a8 a a
c c4. c8 c4. \breathe

    c8 a4. b8 b4.
    d8 d4. a8 a4.

    a8 c4. c8 b b d d
    e4. e8 e4. \breathe
    
dis8 \key e \major cis4. dis8 dis4.
e8 e4. e8 e2

e4.( dis8) cis cis cis e
e4. e8 e4. \breathe

    e8 cis4. dis8 dis4.
    fis8 fis4. e8 e4.
    
    cis8 e4. e8 dis dis fis fis
    cis2.\fermata

}

basNotes = \relative c' {

g8 c,4. g8 g4.
%{f8 f4. c'8 c4.( b8)

a2 d8 d d
e f4. c8 c4. \breathe

    b8 a4. g8 g4.
    d'8 d4. a'8 a4.
    
    f8 f4. d8 g4 g
    a4. e8 e4. \breathe

d8 c4. g8 g4. %}
f8 f4. c'8 c4.( b8)

a2 d8 d d
e f4. c8 c4. \breathe

    b8 a4. g8 g4.
    d'8 d4. a'8 a4.

    f8 f4. d8 g g f d
    a4. e'8 e4. \breathe
    
fis8 \key e \major cis4. b8 b4.
a8 a4. e'8 e4.( dis8)

cis2 fis8 fis fis
gis a4. e8 e4. \breathe

    dis8 cis4. b8 b4.
    fis'8 fis4. cis'8 cis4.
    
    a8 a4. fis8 b b b b
    cis2.\fermata

}

lyricsA = \lyricmode {
  
Sa -- sa -- ge -- yo! Sa -- sa -- ge -- yo!
Shin -- zo -- u wo sa -- sa -- ge -- yo!
Su -- be -- te no gi -- se -- i wa
i -- ma, ko -- no to -- ki no ta -- me ni.
Sa -- sa -- ge -- yo! Sa -- sa -- ge -- yo!
Shin -- zo -- u wo sa -- sa -- ge -- yo!
Su -- su -- mu be -- kimi -- ra -- i wo
sono te de ki -- ri -- hi -- ra -- ke!

}

\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop { 
        \set Staff.instrumentName = "Sopran"
        \sopNotes }
        \new Lyrics \lyricsto "Sop" \lyricsA
      \new Voice = Alt {
        \set Staff.instrumentName = "Alt"
        \altNotes }
        \new Lyrics \lyricsto "Alt" \lyricsA
      \new Voice = Ten {
        \set Staff.instrumentName = "Tenor"
        \clef "treble_8"
        \tenNotes }
        \new Lyrics \lyricsto "Ten" \lyricsA
      \new Voice = Bas {
        \set Staff.instrumentName = "Bas"
        \clef bass
        \basNotes }
        \new Lyrics \lyricsto "Bas" \lyricsA
    >>
  >>

  \layout { }

}
