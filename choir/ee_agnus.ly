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
}

sopNotes = \relative c'' {

\repeat volta 3
{
  % Agnus Dei
  g2 bes4( a)
  f2 (a)
  g1 \break
  
}
\alternative
{
  {
    % Qui tollis
    f2 e4 f
    g2 e4 f
    g2( a4 bes)
    c1
    
    % Miserere
    c2 bes4( as)
    bes2 g
    f( e)
    d1 \break
  }
  {
    % Qui tollis
    bes'2 d4 c
    bes2 c4 d
    c1 c
    
    % Dona nobis pacem
    c2 bes4( as)
    bes2 g
    bes( a)
    g1
  }
}

\bar "|."

}

altNotes = \relative c' {
  
  % Agnus dei
  d2 f
  d1
  e
  
  % Qui tollis
  f2 d4 d
  d2 c4 d
  e2( g)
  a1
  
  % Miserere
  as2 g
  g f
  d( c)
  a1
  
  % Qui tollis
  g'2 g4 g
  g( a) bes bes
  g1
  g
  
  % Dona nobis pacem
  as2 g
  g f
  f1
  d
  
}

tenNotes = \relative c' {

  % Agnus dei
  bes2 bes
  c1
  c
  
  % Qui tollis
  a2 g4 a
  bes2 bes4 a
  g2( c)
  c1
  
  % Miserere
  es2 es
  es es
  bes( g)
  g( f)
  
  % Qui tollis
  bes2 es4 es
  f2 f4 f
  f1
  e
    
  % Dona nobis pacem
  es2 es
  es es
  d1
  bes
  
}

basNotes = \relative c' {

  % Agnus dei
  g2 g
  f1
  e
  
  % Qui tollis
  d2 d4 d
  g,2 g4 a
  c1
  f
  
  % Miserere
  as,2 c
  es g,
  bes( c)
  d1
  
  % Qui tollis
  es2 g,4 g
  bes2 bes4 bes
  c1
  c
    
  % Dona nobis pacem
  as2 c
  es es
  bes( d)
  g1
  
}

lyricsA = \lyricmode {
  A -- gnus De -- i, qui to -- llis pe -- cca -- ta mu -- ndi, mi -- se -- re -- re no -- bis,
  qui to -- llis pe -- cca -- ta mu -- ndi,  do -- na no -- bis pa -- cem.
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
