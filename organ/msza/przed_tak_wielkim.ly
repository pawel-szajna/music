\version "2.18.2"

#(set-global-staff-size 17.5)

\header {
 tagline = ""
}

\paper {
indent = 0\cm
}

test = <<
    \new ChordNames { \transpose a c { \chordmode { 
        c4 f4. e4:m a2:m
        f4. a2:m e:m
        c4 f a:m e4.:m
        f4 c e:m a:m d:m
        c a4.:m f4 g
        a:m e4.:m g c4
        a4.:m e2:m 
    }}}
    \transpose a c { \relative c' { \key a \minor \cadenzaOn
        e8 e f e( d) g g a( c) c4 \bar "!"
        c8( d) c c b a c b( a g4) \bar "!"
        g8 a c b a g a g4 \bar "!"
        a8 b g g e a a4( d,) \bar "!"
        e8 g g e g a a g4 \bar "!"
        a8 b g a( g) f( e) d e4 \bar "||"
        e8( f e) d4( e) \bar "|."
    }}
    \addlyrics {
        Przed tak wiel -- kim sa -- kra -- men -- tem
        U -- pa -- daj -- my wszy -- scy wraz
        Niech przed no -- wym tes -- ta -- men -- tem
        Sta -- rych praw u -- stą -- pi czas
        Co dla zmy -- słów nie -- po -- ję -- te
        Niech do -- peł -- ni wia -- ra w_nas 
        A -- men
    }
>>

\score { \transpose c a \test }

