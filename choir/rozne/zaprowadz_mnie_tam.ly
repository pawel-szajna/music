\version "2.18.2"

\include "../common.ly"

\header {
  title = "Zaprowadź mnie tam"
}

sopNotes = \relative c' {
\tempo 4 = 80 
\cadenzaOn
d8 fis4 g8[ a]
\cadenzaOff
\repeat volta 2
{
b2 b8 c b g 
a4 a a8 b a fis
g4 g g8 a g d
fis4 fis fis8 fis g a 
b4 b b8 c b g 
a4 a a8 b a fis
g4 g g8( a) g d
fis4 fis8 fis fis4 g8 a
g1 \bar "||" \break \cadenzaOn

b\breve b8 g a4 g \bar "|"
g\breve a8 g d fis4 fis \bar "|"
b\breve b8 g a4 g \bar "|"
g\breve a8 g d fis4 fis8 fis fis4 g8[ a]
}

}

altNotes = \relative c' {

d8 d4 d8[ d]
d4( g) g8 g g g
g4 fis fis8 fis fis fis
fis4 e e8 e e d
d4 d d8 d d d
d4 g g8 g g g
g4 fis fis8 fis fis fis
fis4 e e e8 d
d4 d8 d d4 d8 d
d1

d\breve d8 g g( fis) fis( e)
e\breve e8 e d d4 d
d\breve d8 g g( fis) fis( e)
e\breve e8 e d d4 d8 d d4 d8[ d]

}

tenNotes = \relative c' {

a8 a4 a8[ a]
g( a b c) d e d b
c4 c c8 d c a
b4 b b8 b b b
b4 b a8 a b a 
g( a) b( c) d e d b
c4 c c8 d c a
b4 b b b8 b 
b4 b8 b a4 a8 a
b1

g\breve g8 b c4 b
b\breve c8 b b b4 a
g\breve g8 b c4 b
b\breve c8 b b b4 b8 b a4 a8[ a]

}

basNotes = \relative c {

d8 d4 d8[ d]
g2 g8 g g g
fis4 fis fis8 fis fis fis
e4 e e8 e e e 
b4 b d8 d d d
g4 g g8 g g g
fis4 fis fis8 fis fis fis
e4 e e e8 e
b4 b8 b d4 d8 d
g,1

g\breve g8 g d'4 e
e\breve e8 e e b4 d
g,\breve g8 g d'4 e
e\breve e8 e e b4 b8 b d4 d8[ d]

}

lyricsA = \lyricmode {
Za -- pro -- wadź mnie tam,
skąd po -- wro -- tu nie ma,
gdzie u -- sta -- je wia -- ra,
speł -- nia się na -- dzie -- ja,
gdzie świa -- tło -- ścią pa -- chnie
ka -- żdy skra -- wek nie -- ba,
bo ją na swój o -- braz
mi -- łość wy -- le -- wa,
za -- pro -- wadź mnie tam.
\once \override LyricText.self-alignment-X = #LEFT
"1. Do Ciebie, Panie, wołam," ska -- ło mo -- ja,
\once \override LyricText.self-alignment-X = #LEFT
"usłysz głos" me -- go wo -- ła -- nia,
\once \override LyricText.self-alignment-X = #LEFT
"wołam do Ciebie i" wzno -- szę rę -- ce,
\once \override LyricText.self-alignment-X = #LEFT
Pa -- nie mój i Bo -- że, za -- pro -- wadź mnie

}

lyricsB = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
\once \override LyricText.self-alignment-X = #LEFT
"2. Usłysz, Panie, kiedy" gło -- śno wo -- łam,
\once \override LyricText.self-alignment-X = #LEFT
"zmiłuj się nade mną" i mnie wy -- słu -- chaj,
\once \override LyricText.self-alignment-X = #LEFT
"szukam, o Panie, Twoje" -- go o -- bli -- cza,
\once \override LyricText.self-alignment-X = #LEFT
"Tyś moją pomocą, więc" mnie nie od -- rzu -- caj,
}

lyricsC = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
\once \override LyricText.self-alignment-X = #LEFT
"3. Wierzę, że będę oglądał" do -- bra Pa -- na
\once \override LyricText.self-alignment-X = #LEFT
"w kra" -- i -- nie ży -- ją -- cych,
\once \override LyricText.self-alignment-X = #LEFT
"Panie, otwórz" war -- gi mo -- je,
\once \override LyricText.self-alignment-X = #LEFT
"a usta moje będą gło" -- sić Two -- ją chwa -- łę,
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff <<
         \new Voice = Sop { \key g \major \voiceOne \sopNotes }
         \new Voice = Alt { \key g \major \voiceTwo \altNotes }
      >>
      \new Lyrics \lyricsto "Sop" \lyricsA
      \new Lyrics \lyricsto "Sop" \lyricsB
      \new Lyrics \lyricsto "Sop" \lyricsC
      \new Staff <<
         \clef bass
         \new Voice = Ten { \key g \major \voiceOne \tenNotes }
         \new Voice = Bas { \key g \major \voiceTwo \basNotes }
      >>
      %{
      \new Voice = Sop { 
        \set Staff.instrumentName = "Sopran"
        \time 4/4
        \key g \major 
        \sopNotes }
        \new Lyrics \lyricsto "Sop" \lyricsA
        \new Lyrics \lyricsto "Sop" \lyricsB
        \new Lyrics \lyricsto "Sop" \lyricsC
      \new Voice = Alt {
        \set Staff.instrumentName = "Alt"
        \key g \major
        \altNotes }
        \new Lyrics \lyricsto "Alt" \lyricsA
      \new Voice = Ten {
        \set Staff.instrumentName = "Tenor"
        \clef "treble_8"
        \key g \major
        \tenNotes }
        \new Lyrics \lyricsto "Ten" \lyricsA
      \new Voice = Bas {
        \set Staff.instrumentName = "Bas"
        \clef bass
        \key g \major
        \basNotes }
        \new Lyrics \lyricsto "Bas" \lyricsA
     %}
    >>
  >>

  \layout { }

}
