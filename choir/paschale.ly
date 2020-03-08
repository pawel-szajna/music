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
  title = "Præconium Paschale"
  composer = "Paweł Szajna (2020)"
}

% Rejoice

rejoiceS = \relative c'' {
  \time 2/2 \tempo 2=70 \key ges \major \mark\default \partial 2
  bes2\p <bes as>1	     % Rejoice
  \tuplet 3/2 {<bes as>4 <bes as> <bes as>} % heavenly
  <bes as>2 bes1\breathe          % powers
  
  des1 \mf                     % sing
  \tuplet 3/2 {des4 des des}   % choirs of
  des2 \time 3/2 des1 \breathe % angels
  
  bes2 \pp \time 2/2 <bes as>1 % exult
  \tuplet 3/2 {<bes as>2 <bes as>4} % all cre-
  <bes as>2 bes1 \breathe      % -ation
  
  des1 \mp % a-
  \tuplet 3/2 {des2 des4} % -round god's
  des2 \>( ces1 \time 3/2 bes2~<bes as>~<bes ges>\ppp\fermata) % throne
  
}

rejoiceA = \relative c'' {
  \key ges \major
  ges2\p ges~<ges f>   % Rejoice
  \tuplet 3/2 {<f d>4 <f d> <f d>} % heavenly
  ges2 ges1\breathe    % powers
  
  as1 \mf                 % sing
  \tuplet 3/2 {as4 as as} % choirs of
  <as bes>2 bes1\breathe       % angels
  
  ges2 \pp ges~<ges f> % exult
  \tuplet 3/2 {<f d>2 <f d>4}  % all cre-
  ges2 ges1 \breathe   % -ation
  
  as1 \mp               % a-
  \tuplet 3/2 {as2 as4} % -round god's
  ges2 \>(~ges as~as ges es\ppp\fermata) % throne
}

rejoiceT = \relative c' {
  \key ges \major
  des2\p des1          % Rejoice
  \tuplet 3/2 {bes4 c d} % heavenly
  es2 es1\breathe      % powers
  
  ges1 \mf                % sing
  \tuplet 3/2 {es4 f ges} % choirs of
  ges2 ges1\breathe        % angels
  
  des2 \pp des1       % exult
  \tuplet 3/2 {bes4( c) d} % all cre-
  es2 es1\breathe     % -ation
  
  ges1 \mp                  % a-
  \tuplet 3/2 {es4( f) ges} % -round god's
  es2 \>(~es des f es1\ppp\fermata) % throne
}

rejoiceB = \relative c' {
  \key ges \major
  bes2\p bes1                % Rejoice
  \tuplet 3/2 {bes4 bes bes} % heavenly
  bes2 bes1\breathe          % powers
  
  des1 \mf                   % sing
  \tuplet 3/2 {des4 des des} % choirs of
  des2 des1\breathe          % angels
  
  bes2 \pp bes1           % exult
  \tuplet 3/2 {bes2 bes4} % all cre-
  bes2 bes1\breathe       % -ation
  
  des1 \mp                % a-
  \tuplet 3/2 {des2 des4} % -round god's
  bes2 \>(as f~f <es bes'>1\ppp\fermata) % throne
}

% A M E N

amenS = \relative c'' {
  \bar "||" \mark\default \break \time 2/2
  ges2\mf\< g
  <as bes> <c g>
  <bes des>1(~
  <des bes>2~<des a>)
  <des as!>1~<des as>\ff\fermata \breathe
  
  ges,\pp ges\fermata
}

amenA = \relative c' {
  
  <des bes>2\mf\< <c e>
  <des ges> <d e>
  <ges as>( <ges es>~
  <ges e>~<e as>)
  <ges des>1~<f des>\ff\fermata \breathe
  
  es\pp des\fermata
}

amenT = \relative  c' {
  
  ges1\mf\<
  <ges bes>
  <bes des>~<des a>
  <des as!>~<des as>\ff\fermata \breathe
  
  ces\pp bes\fermata
}

amenB = \relative c {
  
  <des ges,>1\mf\<
  <des ges,>
  <des ges,>2( <es es,>
  <e a,>1)
  <des ges>~<des f>\ff\fermata \breathe
  
  ces\pp ges'\fermata
}

% whole song

sopNotes = \relative c'' {
  
  \rejoiceS
  \amenS
  
  \bar "|."

}

altNotes = \relative c' {
  
  \rejoiceA
  \amenA
  
}

tenNotes = \relative c' {

  \rejoiceT
  \amenT
  
}

basNotes = \relative c' {

  \rejoiceB
  \amenB
}

lyricsA = \lyricmode {
  Re -- joice, hea -- ven -- ly po -- wers! Sing, cho -- irs of an -- gels!
  E -- xult, all cre -- a -- tion a -- round God's throne!
  
  A -- men, a -- men, a -- men, a -- men!
}

\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop { 
        \set Staff.instrumentName = "Sopran"
        \time 4/4
        %\transpose g bes {
        %\key g \dorian 
        \sopNotes } %}
        \new Lyrics \lyricsto "Sop" \lyricsA
      \new Voice = Alt {
        \set Staff.instrumentName = "Alt"
        %\transpose g bes {
        %\key g \dorian
        \altNotes } %}
        \new Lyrics \lyricsto "Alt" \lyricsA
      \new Voice = Ten {
        \set Staff.instrumentName = "Tenor"
        %\transpose g bes {
        \clef "treble_8"
        %\key g \dorian
        \tenNotes } %}
        \new Lyrics \lyricsto "Ten" \lyricsA
      \new Voice = Bas {
        \set Staff.instrumentName = "Bas"
        \clef bass
        %\transpose g bes {
        %\key g \dorian
        \basNotes } %}
        \new Lyrics \lyricsto "Bas" \lyricsA
    >>
  >>

  \layout { }

}
