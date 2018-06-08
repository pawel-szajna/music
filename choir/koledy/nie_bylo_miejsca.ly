\version "2.18.2"

\include "../common.ly"

\header {
  title = "Nie było miejsca"
  composer = "Paweł Szajna (2017)"
}

sopNotes = \relative c' {

\repeat volta 2 {
d4 cis d bes'2 bes4 bes a2 a~a4
d,4 cis d a'2 a4 bes g2 g~g4
d4 cis d bes'2 bes4 bes a2 a~a4
d,4 cis d a'2 a4 bes g2 g~g4

g bes c d2 d4 es c2 c~c4
d, fis a c2 c4 d bes2 bes~bes4
d, cis d bes'2 bes4 bes a2 a~a4
d, cis d a'2 a4 bes g2 g~g4
}

d cis d d'1~d4
g, bes d es1~es\fermata
\time 2/4 es4 f \time 4/4 g1 g\fermata
\bar "|."

}

altNotes = \relative c' {
}

tenNotes = \relative c' {
}

basNotes = \relative c' {
}

lyricsA = \lyricmode {
 "1. Nie" by -- ło miej -- sca dla Cie -- bie
 w_Be -- tle -- jem w_ża -- dnej go -- spo -- dzie
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