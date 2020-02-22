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
  title = "Kyrie"
  composer = "Paweł Szajna"
}

sopNotes = \relative c'' {
  
  g2 bes4( a)
  f2 d4( f)
  g2 a4( bes)
  c1
  
  c2 bes4( as)
  bes2 g
  f e
  d1
  
  \bar "||"
  
  f2( e4 f)
  g2 e4( f)
  g2 g
  a1
  
  bes2( g4 a)
  bes2 a4( bes)
  c2 c
  d1
  
  \bar "||"
  
  g,2 bes4( a)
  f2 d4( f)
  g2 a4( bes)
  c1
  
  c2 bes4( as)
  bes2 g
  bes a
  g1
  
  \bar "|."

}

altNotes = \relative c' {
  
  % Kyrie
  d2 f
  d c4( d)
  d2 f4( g)
  g1
  
  as2 g
  g f
  d c
  a1
  
  % Christe
  d1
  d2 c4( d)
  e2 e
  f1
  
  f
  g2 g
  es f
  f1
  
  % Kyrie
  d2 f
  d c4( d)
  d2 f4( g)
  g1
  
  as2 g
  g f
  f f
  d1
}

tenNotes = \relative c' {
  
  bes2 bes
  c a
  bes d
  e1
  
  es2 es
  es es
  bes g
  g( f)
  
  % Christe
  a2( g4 a)
  bes2 bes4( a)
  g2 bes
  c1
  
  d
  bes2 es
  c a
  d1
  
  % Kyrie
  bes2 bes
  c a
  bes d
  e1
  
  es2 es
  es es
  d d
  bes1
  
}

basNotes = \relative c' {
  
  g2 g
  f f
  g d
  c1
  
  as2 c
  es g,
  bes c
  d1
  
  % Christe
  d1
  g,2 g4( a)
  c2 c
  f1
  
  bes,
  es2 g
  as f
  bes,1
  
  % Kyrie
  g'2 g
  f f
  g d
  c1
  
  as2 c
  es es
  bes d
  g1
  
}

lyricsA = \lyricmode {
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Chri -- ste e -- le -- i son,
  Chri -- ste e -- le -- i son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son
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
