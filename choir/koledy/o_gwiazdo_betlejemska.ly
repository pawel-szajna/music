\version "2.18.2"

\include "../common.ly"

\header {
  title = "O gwiazdo betlejemska"
  composer = "Paweł Szajna (2016)"
}

sopNotes = \relative c' {

\repeat volta 3 {
d8 g( fis) g a( g) a b4. d      % o gwiazdo betlejemska
c8 b a g4 fis8 g4.~g4 \breathe  % zaświeć na niebie mym
d8 g( fis) g a( g) a b4. d 
c8 b a g4 fis8 g4.~g4 \breathe

b8 e,4 fis8 g( fis) e fis4. b    % zaprowadź do stajenki
b8 a g g( fis) e b'4.~b4 \breathe% leży tam boży syn
c16( b) a4 a8 a( g) a b4. d     % bóg człowiek z panny świętej
c8 b a g4 fis8
}
\alternative {
  { g4.~g4 s8 }
  { g4.( a~a2. b\fermata) \bar "|." }
}

}

altNotes = \relative c' {

d8 d4 d8 d4 d8 g4. g 
e8 e e16( d) d8 c4 e4.~e4 \breathe
d8 e4 e8 e4 fis8 d4( e8) d4.
e8 d c16( d) e8( d) d e4.( d4) \breathe

d8 b4 b16( d) e8( d) c b( e fis) fis4.
e4. e e8 fis fis fis4 \breathe
fis8 e4 e8 fis4 fis8 g4. g 
e8 e e d4 d8 d4.~d4 s8

e2.( fis gis)\fermata

}

tenNotes = \relative c' {

c8 b4 b8 c4 c8 b4. g 
g8 g g a4 a8 c( b c b4) \breathe
b8 b~b16( a) b( c) c4 a8 g4. g 
g8 g a g4 a16( b) c4.( b4) \breathe

b8 g4 a8 b( a) g fis( g a) b4.
c4( e,16 fis) g4~(g16 a) b8 b cis dis4 \breathe
dis8 c4 c8 d4 d16( c) b4. b
g8 g a a( b) c c4.( b4) s8

c2.( d4. dis e2.\fermata)

}

basNotes = \relative c' {

a8 g4 g8 fis4 fis8 e4. b
c8 d e d4 d8 c4.( e4) \breathe 
fis8 e4 e8 c4 d8 e( d c) b4.
c8 c c c4 c8 c4.( g'4) \breathe 

fis8 e4 e8 e4 e8 d4. d
c8 c c b4 c8 b4.~b4 \breathe
b8 g'4 c,8 d( e) fis g4. b,
c8 c c d4 d8 g4.~g4 s8

c,4.( a d b e2.\fermata)


}

lyricsA = \lyricmode {
 "1. O" gwia -- zdo be -- tle -- jem -- ska,
 za -- świeć na nie -- bie mym
 tak szu -- kam cię wśród no -- cy
 tę -- sknię za świa -- tłem twym
 
 za -- pro -- wadź do sta -- jen -- ki
 le -- ży tam bo -- ży syn
 bóg czło -- wiek z_pan -- ny świę -- tej
 da -- ny na o -- kup win
}

lyricsB = \lyricmode {
 "2. O" nie masz go już w_szop -- ce, 
 nie masz go w_żłob -- ku tam 
 więc gdzie pój -- dzie -- my chry -- ste
 gdzie się u -- kry -- łeś nam 

 pój -- dzie -- my przed oł -- ta -- rze
 wznie -- cić mi -- ło -- ści żar 
 i hołd ci ni -- ski od -- dać 
 to jest nasz wszy -- stek dar
}

lyricsC = \lyricmode {
  "3. Ja" nie wiem o mój pa -- nie
  któ -- ryś miał w_żło -- bie tron 
  czy du -- sza mo -- ja bie -- dna
  mil -- sza ci jest niż on 
  
  u -- li -- tuj się na -- de mną
  bła -- gać cię ko -- rnie śmiem
  gdyś staj -- nią nie po -- gar -- dził
  nie gardź i ser -- cem _ mym
}

\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop { 
        \set Staff.instrumentName = "Sopran"
        \tempo "Lento"
        \time 6/8
        \key g \major \partial 8
        \sopNotes }
        \new Lyrics \lyricsto "Sop" \lyricsA
        \new Lyrics \lyricsto "Sop" \lyricsB
        \new Lyrics \lyricsto "Sop" \lyricsC
      \new Voice = Alt {
        \set Staff.instrumentName = "Alt"
        \key g \major
        \altNotes }
        \new Lyrics \lyricsto "Alt" \lyricsA
        \new Lyrics \lyricsto "Alt" \lyricsB
        \new Lyrics \lyricsto "Alt" \lyricsC
      \new Voice = Ten {
        \set Staff.instrumentName = "Tenor"
        \clef "treble_8"
        \key g \major
        \tenNotes }
        \new Lyrics \lyricsto "Ten" \lyricsA
        \new Lyrics \lyricsto "Ten" \lyricsB
        \new Lyrics \lyricsto "Ten" \lyricsC
      \new Voice = Bas {
        \set Staff.instrumentName = "Bas"
        \clef bass
        \key g \major
        \basNotes }
        \new Lyrics \lyricsto "Bas" \lyricsA
        \new Lyrics \lyricsto "Bas" \lyricsB
        \new Lyrics \lyricsto "Bas" \lyricsC
    >>
  >>

  \layout { }
  %\midi { }

}