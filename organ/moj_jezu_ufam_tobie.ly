\version "2.18.2"

\include "common.ly"

#(set-global-staff-size 22)

\header {
	title = "Mój Jezu ufam Tobie"
}

sopNotes = \relative c' {

\partial 4 e4

a a c b b2 a4 \breathe
e f a g f e2. \breathe

e4 e f e d d2 c4 \breathe c
b f' e gis a2.
\bar "|." \pageBreak c
}

altNotes = \relative c' {

e4 f1 g2 f4 e 
f2 e4 d b1
c2. b4 c bes8 a g4 a 
b2.~b8 d d2( c4)
}

tenNotes = \relative c' {

c4 c d8 b g2 
e'4 d c2~c2. a4~a2
g~g4 a2 f4~f2~f4. e8
d4 g2 e4~e2.
}

basNotes = \relative c' {

a8 g
f e d4 c d 
e2 f4 g \break
a f c d
e2. d4 
c f, a b \break
bes2 c4 f,
g b c b 
a2.
}

lyricsA = \lyricmode {

"1. Mój" Je -- zu u -- fam To -- bie
przez wszy -- stkie mo -- je dni
i "w każ" -- dej ży -- cia do -- bie
nad wszy -- stko u -- fam Ci.
}

lyricsB = \lyricmode {
"2. Twym" mi -- ło -- sier -- dziem Pa -- nie
o -- gar -- nij ca -- ły świat
aż zni -- knie ból i łka -- nie
mi -- ło -- ści wzej -- dzie kwiat.
}

lyricsC = \lyricmode {
"3. Przez" mi -- ło -- sier -- dzia zdro -- je
dla za -- sług Bo -- skiej krwi 
nas ob -- darz już po -- ko -- jem,
u -- fa -- my, Je -- zu, Ci.
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff <<
         \new Voice = Sop { \key c \major \voiceOne \sopNotes }
         \new Voice = Alt { \key c \major \voiceTwo \altNotes }
      >>
      \new Lyrics \lyricsto "Sop" \lyricsA
      \new Lyrics \lyricsto "Sop" \lyricsB
      \new Lyrics \lyricsto "Sop" \lyricsC
      \new Staff <<
         \clef bass
         \new Voice = Ten { \key c \major \voiceOne \tenNotes }
         \new Voice = Bas { \key c \major \voiceTwo \basNotes }
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
