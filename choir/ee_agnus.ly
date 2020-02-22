\version "2.18.2"

\include "./common.ly"

\paper {
 #(define fonts
    (make-pango-font-tree
      "Libre Baskerville"
      "Libre Baskerville"
      "Libre Baskerville"
      (/ staff-height pt 20)))
}

\header {
  title = "Agnus Dei"
  composer = "Paweł Szajna"
}

sopNotes = \relative c'' {

\repeat volta 2
{
  % Agnus Dei
  g2 bes4( a)
  f2 (a)
  g2.
  
  % Qui tollis
  a4
  bes2 d4 c
  bes2 a
  c2 c
}
\alternative
{
  {
    c4( bes) as2
    bes g
    f( e)
    d1
  }
  { d1 }
}

\bar "|."

}

altNotes = \relative c' {
}

tenNotes = \relative c {
}

basNotes = \relative c {
}

lyricsA = \lyricmode {
  A -- gnus De -- i, qui to -- llis pe -- cca -- ta mu -- ndi, mi -- se -- re -- re no -- bis,
  do -- na no -- bis pa -- cem.
}

\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop { 
        \set Staff.instrumentName = "Sopran"
        \time 4/4
        %\transpose g bes {
        \key g \dorian 
        \sopNotes } %}
        \new Lyrics \lyricsto "Sop" \lyricsA
      \new Voice = Alt {
        \set Staff.instrumentName = "Alt"
        %\transpose g bes {
        \key g \dorian
        \altNotes } %}
        \new Lyrics \lyricsto "Alt" \lyricsA
      \new Voice = Ten {
        \set Staff.instrumentName = "Tenor"
        %\transpose g bes {
        \clef "treble_8"
        \key g \dorian
        \tenNotes } %}
        \new Lyrics \lyricsto "Ten" \lyricsA
      \new Voice = Bas {
        \set Staff.instrumentName = "Bas"
        \clef bass
        %\transpose g bes {
        \key g \dorian
        \basNotes } %}
        \new Lyrics \lyricsto "Bas" \lyricsA
    >>
  >>

  \layout { }

}
