\version "2.18.2"

\include "../common.ly"

\header {
  title = "Męka wg św. Jana"
  subtitle = "Zakończenie trzygłosowe"
  composer = "Paweł z Szajnochy"
}

sopNotes = \relative c' {

\cadenzaOn
a8 bes c c c d c bes4 a \bar "!" % potem józef z arymatei
a8 bes c c\breve d8 c c4 c \bar "!" % który był także
c\breve d8 bes a( g) bes4 a \bar "!" % poprosił piłata
c8 c bes a bes4 a \bar "!" % a piłat
c\breve d8 bes a g bes4 a \bar "!" % poszedł więc
a8 bes c\breve c\breve c8 c d c bes4 a \bar "!" % przybył również
a\breve bes8 bes bes a g bes4 a \bar "!" % i przyniósł około
a8 bes c c\breve d8 c c4 c\bar "!" % zabrali więc
c\breve c8 d bes a( g) bes4 a\bar "!" % stosownie do
a8 bes c\breve c4 c\bar "!" % a na miejscu
c\breve d8 bes a4\bar "!" % w ogrodzie zaś
c\breve c8( d) bes a( g) bes4 a\bar "!" % w którym jeszcze
a8 bes c\breve c8 d c c c4 c\bar "!" % tam to więc
c8 c c c( d) bes a g g4 f\bar "!" % bo grób
\bar "|."

}

altNotes = \relative c {
f8 g a a a bes a g4 f
f8 g a a\breve bes8 a g4 a
a\breve bes8 g f( e) g4 f
a8 a g f g4 f
a\breve bes8 g f e g4 f
f8 g a\breve g\breve a8 a bes a g4 f
f\breve g8 g g f e g4 f
f8 g a a\breve bes8 a g4 a
a\breve a8 bes g f( e) g4 f
f8 g a\breve g4 a
a\breve bes8 g f4
a\breve f4 g8 f( e) g4 f
f8 g a\breve a8 bes a a g8[( a16 bes)] a4
a8 a a f4 g8 f e e4 f
}

tenNotes = \relative c {
f8 e f f f f f c4 f
f8 e f f\breve f8 f e4 f
f\breve bes,8 d c4 c f
f8 f c d d4 d
f\breve bes,8 bes bes bes c4 f
f8 e f\breve e\breve f8 f f f c4 f
d\breve d8 c c c c c4 f
f8 e f f\breve f8 f e4 f
f\breve f8 bes, bes bes4 c d
f8 e f\breve e4 f
f\breve d8 d d4
f\breve bes,4 bes8 bes4 c f
f8 e f\breve f8 f f f e8[( f16 g)] f4
f8 f f bes,4 bes8 bes bes c4 f4
}

lyricsA = \lyricmode {
Po -- tem Jó -- zef z_A -- ry -- ma -- te -- i, któ -- ry był
\once \override LyricText.self-alignment-X = #LEFT
"uczniem Jezusa, lecz ukryty z obawy" przed Ży -- da -- mi,
\once \override LyricText.self-alignment-X = #LEFT
"poprosił Piłata, aby mógł zabrać" cia -- ło Je -- zu -- sa.
A Pi -- łat zez -- wo -- lił.

\once \override LyricText.self-alignment-X = #LEFT
"Poszedł więc i" za -- brał Je -- go cia -- ło. Przy -- był
\once \override LyricText.self-alignment-X = #LEFT
"również i Nikodem, ten, który po raz"
\once \override LyricText.self-alignment-X = #LEFT
"pierwszy przyszedł" do Je -- zu -- sa w_no -- cy,
\once \override LyricText.self-alignment-X = #LEFT
"i przyniósł około stu funtów mieszaniny" mir -- ry i a -- lo -- e -- su.
Za -- bra -- li \once \override LyricText.self-alignment-X = #LEFT
"więc ciało Jezusa i obwiązali je w płótna razem" z_won -- no -- ścia -- mi,
\once \override LyricText.self-alignment-X = #LEFT "stosownie do żydowskiego"
spo -- so -- bu grze -- ba -- nia. A na 
\once \override LyricText.self-alignment-X = #LEFT
"miejscu, gdzie Go ukrzyżowano, był" o -- gród,
\once \override LyricText.self-alignment-X = #LEFT
"w ogrodzie zaś" no -- wy -- grób,
\once \override LyricText.self-alignment-X = #LEFT
"w którym jeszcze nie zło" żo -- no ni -- ko -- go.
Tam to \once \override LyricText.self-alignment-X = #LEFT
"więc ze względu na żydowski dzień przygotowania" zło -- żo -- no Je -- zu -- sa,
bo grób znaj -- do -- wał się w_po -- bli -- żu.

}

\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop { 
	\clef "treble_8"
        \set Staff.instrumentName = "Tenor (I)"
        \time 4/4
        \key f \major 
        \sopNotes }
        \new Lyrics \lyricsto "Sop" \lyricsA
      \new Voice = Alt {
        \set Staff.instrumentName = "Baryton (E)"
        \key f \major
	\clef "treble_8"
        \altNotes }
        \new Lyrics \lyricsto "Alt" \lyricsA
      \new Voice = Ten {
        \set Staff.instrumentName = "Bas (J)"
        \clef "bass"
        \key f \major
        \tenNotes }
        \new Lyrics \lyricsto "Ten" \lyricsA
    >>
  >>
  \layout { }

}
