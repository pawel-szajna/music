\version "2.18.2"

\include "../common.ly"
%{
\paper {
  paper-height = 15\cm
  paper-width = 50\cm %6.875\in %8.26
  line-width = 45\cm
}
%}
\header {
  title = "Alleluja"
  composer = "Paweł Szajna (2017)"
}

\paper {
	system-system-spacing.basic-distance = #15
	%score-markup-spacing.basic-distance = #25
}

sopNotes = \relative c'' {
 d2. c4.~c4 bes8 g4 g8 c4 bes8 a2.
 d2. c4.~c4 bes8 a4 a8 g4 g8 f2.
 \bar "|."
}

altNotes = \relative c'' {
 bes2. bes4.( a4) f8 f4 e8 e( f) g f4 g8 f4 f8 
 bes2. bes4.( a4) f8 f4 f8 e( f) e c2.
}

tenNotes = \relative c' {
 f2. f4.~f4 d8 c4 c8 c4 c8 c4 cis8 d4 es8 
 f2. f4.~f4 d8 c4 d8 e( d) c a2.
}

basNotes = \relative c {
 bes4.( bes16) d f8 bes f4. f16 a c8 f, c'4.( c,8) d e f4 e8 d4 c8
 bes4.( bes16) d f8 bes f4. f16 a c8 f, f4 d8 e4 e8 f2.
}

sopSoloNotes = \relative c' {
	\cadenzaOn
	f\breve g8 c bes4 a \bar "!"
	d\breve c8 c g( c16 bes) a4 \bar "|."
}

altSoloNotes = \relative c' {
	d\breve e8 e e( g) f4
	bes\breve bes8 a g4 f
}

tenSoloNotes = \relative c' {
	a\breve c8 c c4 c
	f\breve f8 f e4 c
}

basSoloNotes = \relative c {
	d\breve c8 c c( e) f4
	bes,\breve f'8 f c4 f
}



lyricsS = \lyricmode {
 Al -- le -- lu -- ja al -- le -- lu -- ja
 al -- le -- lu -- ja al -- le -- lu -- ja.
}

lyricsA = \lyricmode {
 Al -- le -- lu -- ja al -- le -- lu al -- le -- lu -- ja
 al -- le -- lu -- ja al -- le -- lu -- ja.
}

lyricsT = \lyricmode {
 Al -- le -- lu -- ja al -- le -- lu al -- le -- lu -- ja
 al -- le -- lu -- ja al -- le -- lu -- ja.
}

lyricsB = \lyricmode {
 Al -- le -- lu -- ja le al -- le -- lu -- ja al -- le -- lu al -- le -- lu -- ja
 Al -- le -- lu -- ja le al -- le -- lu -- ja ja al -- le -- lu -- ja.
}

lyricsV = \lyricmode {
	\once \override LyricText.self-alignment-X = #LEFT
	"Chrystus został ofiarowany jako" na -- sza pa -- scha,
	\once \override LyricText.self-alignment-X = #LEFT
	"odprawiajmy nasze" świę -- to "w Pa" -- nu.
}

\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop { 
        \set Staff.instrumentName = "Sopran"
        \tempo "Allegro"
        \time 6/8
        \key f \major
        \sopNotes }
        \new Lyrics \lyricsto "Sop" \lyricsS
      \new Voice = Alt {
        \set Staff.instrumentName = "Alt"
        \key f \major
        \altNotes }
        \new Lyrics \lyricsto "Alt" \lyricsA
      \new Voice = Ten {
        \set Staff.instrumentName = "Tenor"
        \clef "treble_8"
        \key f \major
        \tenNotes }
        \new Lyrics \lyricsto "Ten" \lyricsT
      \new Voice = Bas {
        \set Staff.instrumentName = "Bas"
        \clef bass
        \key f \major
        \basNotes }
        \new Lyrics \lyricsto "Bas" \lyricsB
    >>
  >>

}

\markup { \vspace #3 \hspace #8.5 \huge{Soliści:} }

\score {
  <<
    \new ChoirStaff <<
      \new Staff <<
          \once \override Staff.TimeSignature #'stencil = ##f 
	      \new Voice = SopSolo { 
	        \key f \major
	        \voiceOne
	        \sopSoloNotes }
	      \new Voice = AltSolo {
	        \key f \major
	        \voiceTwo
	        \altSoloNotes }
	  >>
	  \new Lyrics \lyricsto "SopSolo" \lyricsV
	  \new Staff <<
	      \once \override Staff.TimeSignature #'stencil = ##f 
	      \new Voice = TenSolo {
	        \clef bass
	        \key f \major
	        \voiceOne
	        \tenSoloNotes }
	        \new Lyrics \lyricsto "Ten" \lyricsT
	      \new Voice = BasSolo {
	        \clef bass
	        \key f \major
	        \voiceTwo
	        \basSoloNotes }
	        \new Lyrics \lyricsto "Bas" \lyricsB
	  >>
	  >>
  >>
  \layout {
  	indent = 0.3\cm

  }
}


