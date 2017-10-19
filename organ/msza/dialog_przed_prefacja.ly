\version "2.18.2"

#(set-global-staff-size 17.5)

\header {
 tagline = ""
}

\paper {
indent = 0\cm
}

test = <<
    \new ChordNames { \transpose d c { \chordmode { 
        d2:m c4 d4:m 
        c4. f4 g2 a4:m
        s4 f4. c2 g4 c
    }}}
    \transpose d c { \relative c' { \key d \minor \cadenzaOn
        d4 c8 d e( d) d4 \bar "!"
        e8 d ( e f) e d e d( c) c4 \bar "!"
        d8( e f4) e8 e e d e d( c) c4 \bar "||"         
    }}
    \addlyrics { 
        I z_du -- chem Two -- im 
        Wzno -- si -- my je do Pa -- na
        Go -- dne to i spra -- wie -- dli -- we
    }
>>

\score { \test }
\score { \transpose c cis \test }
\score { \transpose c d \test }
\score { \transpose c es \test }
\score { \transpose c e \test }
\score { \transpose c f \test }
\score { \transpose c fis \test }
\score { \transpose c g \test }
\score { \transpose c as \test }
\score { \transpose c a \test }
\score { \transpose c bes \test }
\score { \transpose c b \test }

