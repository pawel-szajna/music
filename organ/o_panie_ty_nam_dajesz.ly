\version "2.18.2"

\include "common.ly"

\header {
	title = "Preludium organowe"
	subtitle = \markup { "na temat pieśni" { \italic "O Panie, Ty nam dajesz" } }
	composer = "Paweł Szajna (2016)"
}

organRHNotes = \relative c'''' {

s1*19

%\ottava #1

<<g4 d bes>>
<<a d f>>
<<e c a>>
<<g a c>>
<<d2 a f>>
<<f as b d>>
<<d bes g>>
<<g a cis d>>
<<{d1~d} \\ {s <<a fis d>>}>>

}

organLHNotes = \relative c {

\override TupletBracket.bracket-visibility = ##f
\omit TupletNumber

%1
\tuplet 3/2 {d16 f a} \change Staff = "up" \tuplet 3/2 {d f a} 
\tuplet 3/2 {d a f} \tuplet 3/2 {d \change Staff = "down" a f}

\tuplet 3/2 {d f as} \change Staff = "up" \tuplet 3/2 {f' as b}
\tuplet 3/2 {d b as} \tuplet 3/2 {f \change Staff = "down" as, f}

%2
\tuplet 3/2 {d g bes} \change Staff = "up" \tuplet 3/2 {d g bes}
\tuplet 3/2 {d bes g} \tuplet 3/2 {d \change Staff="down" bes g}

\tuplet 3/2 {e a cis} \change Staff = "up" \tuplet 3/2 {e a cis}
\tuplet 3/2 {d cis a} \tuplet 3/2 {e \change Staff="down" cis a}

%3
\tuplet 3/2 {f a \change Staff = "up" d} \tuplet 3/2 {f a d}
\tuplet 3/2 {f d a} \tuplet 3/2 {f d \change Staff="down" a}

\tuplet 3/2 {as b \change Staff = "up" d} \tuplet 3/2 {as' b d}
\tuplet 3/2 {f d b} \tuplet 3/2 {as f d} \change Staff="down"

%4
\tuplet 3/2 {bes \change Staff = "up" d f} \tuplet 3/2 {bes d f}
\tuplet 3/2 {bes f d} \tuplet 3/2 {bes f d}

\tuplet 3/2 {c e g} \tuplet 3/2 {bes c e}
\tuplet 3/2 {g e c} \tuplet 3/2 {bes g e}

\pageBreak

%5
\tuplet 3/2 {f a c} \tuplet 3/2 {f a c}
\tuplet 3/2 {f c a} \tuplet 3/2 {f c a}

\tuplet 3/2 {g bes cis} \tuplet 3/2 {e g bes}
\tuplet 3/2 {cis bes g} \tuplet 3/2 {e cis bes}

%6
\tuplet 3/2 {a cis e} \tuplet 3/2 {a cis d}
\tuplet 3/2 {e d cis} \tuplet 3/2 {a e a,}

\tuplet 3/2 {f a d} \tuplet 3/2 {f g a}
\tuplet 3/2 {d a f} \tuplet 3/2 {d a f} \change Staff="down"

%7

\tuplet 3/2 {d, f a} \change Staff = "up" \tuplet 3/2 {d f a}
\tuplet 3/2 {d a f} \tuplet 3/2 {d \change Staff="down" a f}

\tuplet 3/2 {d f as} \change Staff = "up" \tuplet 3/2 {f' as b}
\tuplet 3/2 {d b as} \tuplet 3/2 {f \change Staff="down" as, f}

%8

\tuplet 3/2 {d g bes} \change Staff = "up" \tuplet 3/2 {d g bes}
\tuplet 3/2 {d bes g} \tuplet 3/2 {d \change Staff="down" bes g}

\tuplet 3/2 {e a cis} \change Staff = "up" \tuplet 3/2 {e a cis}
\tuplet 3/2 {d cis a} \tuplet 3/2 {e \change Staff="down" cis a}

%9

\tuplet 3/2 {d, f a} \change Staff = "up" \tuplet 3/2 {d f a}
\tuplet 3/2 {d a f} \tuplet 3/2 {d \change Staff="down" a f}

\tuplet 3/2 {f a \change Staff = "up" d} \tuplet 3/2 {f a d}
\tuplet 3/2 {f d a} \tuplet 3/2 {f d a}

%10

\tuplet 3/2 {a c e} \tuplet 3/2 {a c e}
\tuplet 3/2 {a e c} \tuplet 3/2 {a e c} \change Staff="down"

\tuplet 3/2 {f, a \change Staff="up" d} \tuplet 3/2 {f a d}
\tuplet 3/2 {f d a} \tuplet 3/2 {f d a} \change Staff="down"

\pageBreak

% 11

\tuplet 3/2 {d, g bes} \change Staff="up" \tuplet 3/2 {d g bes}
\tuplet 3/2 {d bes g} \tuplet 3/2 {d \change Staff="down" bes g}

\tuplet 3/2 {c, e a} \change Staff="up" \tuplet 3/2 {c e a}
\tuplet 3/2 {c a e} \change Staff="down" \tuplet 3/2 {c a e}

% 12
\tuplet 3/2 {d f a} \change Staff = "up" \tuplet 3/2 {d f a}
\tuplet 3/2 {d a f} \tuplet 3/2 {d \change Staff="down" a f}

\tuplet 3/2 {d f as} \change Staff = "up" \tuplet 3/2 {f' as b}
\tuplet 3/2 {d b as} \tuplet 3/2 {f \change Staff="down" as, f}

% 13
\tuplet 3/2 {d g bes} \change Staff = "up" \tuplet 3/2 {d g bes}
\tuplet 3/2 {d bes g} \tuplet 3/2 {d \change Staff="down" bes g}

\tuplet 3/2 {e a cis} \change Staff = "up" \tuplet 3/2 {e a cis}
\tuplet 3/2 {d cis a} \tuplet 3/2 {e \change Staff="down" cis a}

% 19
\change Staff="up"

\tuplet 3/2 {f'' d a} \tuplet 3/2 {f a d}
\tuplet 3/2 {f cis bes} \tuplet 3/2 {g bes cis}

\tuplet 3/2 {g' d bes} \tuplet 3/2 {d, bes' d}
\tuplet 3/2 {g es g,} \tuplet 3/2 {c, bes' d}

% 20
\tuplet 3/2 {bes' f d} \tuplet 3/2 {f, bes f'}
\tuplet 3/2 {bes d, bes} \tuplet 3/2 {g d' f}

\tuplet 3/2 {a c, a} \tuplet 3/2 {c, f a}
\tuplet 3/2 {a' f d} \tuplet 3/2 {f, d a'}

% 21
\tuplet 3/2 {f' d a} \tuplet 3/2 {f a d}
\tuplet 3/2 {f f, d} \tuplet 3/2 {a d f}

\tuplet 3/2 {g' d bes} \tuplet 3/2 {d, g bes}
\tuplet 3/2 {g' g, d} \tuplet 3/2 {bes d g}

% 22
\tuplet 3/2 {a' e cis} \tuplet 3/2 {a cis e}
\tuplet 3/2 {a cis, a} \tuplet 3/2 {e g a}

\tuplet 3/2 {cis e, cis} \tuplet 3/2 {a cis e}
\tuplet 3/2 {g cis, \change Staff="down" a} \tuplet 3/2 {e cis a}

% 23
\change Staff="up"

\tuplet 3/2 {d''' a f} \tuplet 3/2 {d a f}
\tuplet 3/2 {d'' d, a} \tuplet 3/2 {f d a}

\tuplet 3/2 {<<g c''>> c,, e} \tuplet 3/2 {g c e}
\tuplet 3/2 {<<g bes>> e, c} \tuplet 3/2 {g e bes}

% 24
\tuplet 3/2 {<<a a''>> c,, f} \tuplet 3/2 {a c e}
\tuplet 3/2 {f c a} \tuplet 3/2 {f c a}

\tuplet 3/2 {f'' c a} \tuplet 3/2 {f c \change Staff="down" a}
\tuplet 3/2 {g f c} \tuplet 3/2 {a f e}

\pageBreak

% 25
\tuplet 3/2 {g bes d} \tuplet 3/2 {g d bes}
\tuplet 3/2 {d g bes} \tuplet 3/2 {d bes g}

\tuplet 3/2 {e a c} \tuplet 3/2 {e c a-5}
\clef treble \tuplet 3/2 {c e a} \tuplet 3/2 {c-1 b a}

% 26

\tuplet 3/2 {d,16 f a} \tuplet 3/2 {d a f}
\tuplet 3/2 {d f a} \tuplet 3/2 {d a f}

\tuplet 3/2 {d f as} \tuplet 3/2 {d b as}
\tuplet 3/2 {d, f as} \tuplet 3/2 {d b as}

% 27
\tuplet 3/2 {d, g bes} \tuplet 3/2 {d bes g}
\tuplet 3/2 {d g bes} \tuplet 3/2 {d bes g}

\tuplet 3/2 {e a cis} \tuplet 3/2 {d cis a}
\tuplet 3/2 {e a cis} \tuplet 3/2 {d cis a}

% 28

\change Staff="up"

\tuplet 3/2 {s a' fis} \tuplet 3/2 {d a d}
\tuplet 3/2 {fis d a} \tuplet 3/2 {fis-4 d-5 fis-3}

\tuplet 3/2 {a-1 fis d} \change Staff="down" \clef bass \tuplet 3/2 {a-4 fis-5 a-3}
\tuplet 3/2 {d-1 a fis} \tuplet 3/2 {d a c}

% 29
<<a1 d fis a>>

}

organPedNotes = \relative c {

s1*7 s2 s4 d
\repeat volta 2 { a' a f g a2 f
g4 f e c
d1~d2. d4 }
<<f2 f,>> <<g g'>>
<<bes bes,>> <<f a'>>
<<{f} \\ {d,4 a'}>>
<<g8 g'>> <<f f,>> <<e e'>> <<d d,>> <<cis1 cis'>>
<<bes2 bes'>> <<c c,>> <<f2. f,>> <<g8 g'>> <<a a,>>
g a bes c a bes c a \repeat volta 2 {d1~d}
d2 g,4 a <<d1~d,>> \bar "|."

}

\score {
    \new StaffGroup \with {
     % \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #9
    } <<
      \set StaffGroup.systemStartDelimiter = #'SystemStartBar
      \new PianoStaff <<
        \new Staff = "up"   { \key d \minor \organRHNotes }
        \new Staff = "down" { \clef bass \key d \minor \organLHNotes }
      >>
      \new Staff = "Pedal" <<
        \set Staff.instrumentName = "(Ped.)"
        \tempo "Allegro" 4 = 130
        \key d \minor \clef bass
        \new Voice {
          \organPedNotes
        }
      >>
    >>

  \layout { }
  %\midi { }

}