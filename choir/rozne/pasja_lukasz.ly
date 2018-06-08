\version "2.18.2"

\include "../common.ly"

\header {
  title = "Męka naszego Pana Jezusa Chrystusa"
  subtitle = "według Świętego Łukasza"
}

sopNotes = \relative c' {

\cadenzaOn

% Gdy nadeszła pora
g8 g f a g4 g4 \bar "!"
g8 g g g g g \bar "" g g d4 \bar "" d8 d c d es f d4 \bar "!"
g8 a bes g4 f \bar "!"

% Gorąco pragnąłem
es8 es es \bar "" es es es \bar "" es es es es es \bar "" es es es es es( f) d c[( d16 es)] d4 \bar "!"
c8 c c c c bes c4 \bar "!"
d8 d d d d d d d \bar "" d d d d \bar "" d es f d8( f,) g4 \bar "!"

}

altNotes = \relative c {
}

tenNotes = \relative c {
}

lyricsA = \lyricmode {
"E. Gdy" na -- de -- szła po -- ra, Je -- zus za -- jął miej -- sce u sto -- łu i a -- po -- sto -- ło -- wie -- z_Nim.
Wte -- dy rzekł do nich: "J. Go" -- rą -- co pra -- gną -- łem spo -- żyć tę Pa -- schę z_wa -- mi, za -- nim -- bę -- dę
cier -- piał. Al -- bo -- wiem po -- wia -- dam wam: nie bę -- dę już jej spo -- ży -- wać, aż się speł -- ni w_kró -- le --
stwie Bo -- żym.
}

\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop { 
	\clef "treble_8"
        \set Staff.instrumentName = "Tenor (I)"
        \transpose g b {
        \key bes \major 
        \sopNotes} }
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
