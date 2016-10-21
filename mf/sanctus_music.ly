sopNotes = \relative c' {

  % Sanctus…
  \mark \default

  es8\mf( f) g( bes) as( g)   
  d\<( es f as) g( f)   
  c\>( d es as) g( f)\! es2.

  % Dominus…

  es8( f) g( bes) as( g)   
  d\<( es f as) g( f)   
  c\>( d es as) g( f)\! es2. \bar "||"

  % Pleni…
  \mark \default
  
  g8\p\<( as) bes4 as8( bes) c2\f\> bes4\mf
  f8\pp\<( g as4 g8 as) bes2\mf\> as4\p
  es8\ff( f g) bes as\>( g) f2. es\p

  % Hosanna…
  \mark \default

  \repeat volta 2 {
    es'8\fff( d) bes( g) f4
    d'8\ff( c) as( g) f4
    c'8\mf( bes) as g f g
    
  }
  \alternative {
    { as2 g4 }
    { as\p( f) es\fermata \bar "||" }
  }
  
  
  % Benedictus…
  \mark \default

  c8\pp( b c d) es\<( f) g2. g2 \breathe
  g4 c2.\ff bes2
  bes4\f\> as4.( bes8 as4) g4.\mf( as8) g4
  f2\< f4 g2.\ff

  % Hosanna…
  \mark \default

  \repeat volta 2 {
    es'8\fff( d) bes( g) f4
    d'8\ff( c) as( g) f4
    c'8\mf( bes) as g f g
    
  }
  \alternative {
    { as2 g4 }
    { as\p( f) es \bar "|." }
  }

}

altNotes = \relative c' {

  % Sanctus…

  bes4\mf es es
  d2\< d4
  c8\>( bes c4) bes\! bes2.

  % Dominus…

  bes4 es es
  d2\< d4
  c8\>( bes c4) bes\! bes2.

  % Pleni…

  es8\p\<( f) es4 d8( es) es2\f\> es8\mf( d)
  d2\pp\<( es4) es8\mf\>( d es4) f\p
  es8\ff( d es) d es4\>~es d8( c d4) es2.\p

  % Hosanna…

  g4\fff g8( es) d4
  f8\ff( as) f( es) d4
  es\mf es8 es d es
  f2 es4
  es\p( d) es\fermata

  % Benedictus…

  c8\pp( b c4) c4\< es8( d es f d4) d2 \breathe
  es4 es2.\ff g2 
  g4\f\> g( f8 es f4~f\mf) es8( d) es4 
  es4\<( d8 c) d4 d2.\ff

  % Hosanna…

  g4\fff g8( es) d4
  f8\ff( as) f( es) d4
  es\mf es8 es d es
  f2 es4
  es\p( d) es

}

tenNotes = \relative c' {

  % Sanctus…

  g4\mf bes c
  d\<( c) bes 
  as\>( es) f\! g2.

  % Dominus…

  g4 bes c
  d\<( c) bes 
  as\>( es) f\! g2.

  % Pleni…

  bes4\p\< bes bes as8\f\>( bes c as) g4\mf
  bes2.\pp\< bes4\mf\>( c) d\p
  c4.\ff c8 c4\> bes2( as4~as\p g8 f) g4

  % Hosanna…

  c\fff bes f
  bes\ff bes as
  as\mf as8 as c c
  d2 bes4 
  c\p( bes) g\fermata

  % Benedictus…

  es\pp( g) c\< bes2. b2  \breathe
  c4 as2.\ff bes2 
  bes4\f\> c2. bes2\mf bes4 
  bes2\< bes4 b2.\ff

  % Hosanna…

  c4\fff bes f
  bes\ff bes as
  as\mf as8 as c c
  d2 bes4 
  c\p( bes) g

}

basNotes = \relative c {

  % Sanctus…

  es4\mf \parenthesize es c
  bes2\< g4 
  as2\> d4\! es2.

  % Dominus…

  es4\mf \parenthesize es c
  bes2\< g4 
  as2\> d4\! es2.

  % Pleni…

  es4\p\< g, bes as\f\>( c) es\mf
  bes2\pp\<( g4) bes2\mf\> bes4\p
  c4.\ff bes8 as4\> bes2( d4) es2.\p

  % Hosanna…

  c4\fff c d
  bes\ff bes bes 
  as8\mf( bes) c c c c 
  bes4( d) es
  as,\p( d) es\fermata

  % Benedictus…

  c4.\pp( bes8) c\<( d) es2( f4) g2 \breathe
  es4 c2\ff( d4) es2
  d4\f\> as'2( c,8 d) es2\mf g,8( as)
  bes2\< as4 g2.\ff

  % Hosanna…

  c4\fff c d
  bes\ff bes bes 
  as8\mf( bes) c c c c 
  bes4( d) es
  as,\p( d) es

}

sopLyrics = \lyricmode {
	San -- – -- ctus, San -- ctus, San -- – -- ctus
  Do -- mi -- nus, De -- us Sa -- ba -- oth.
  
  Ple -- ni sunt cae -- li et ter -- ra
  glo -- ri -- a tu -- a.
  
  Ho -- san -- na, ho -- san -- na, ho -- san -- na
  in ex -- cel -- sis, cel -- sis.

  Be -- ne -- dic -- tus, qui ve -- nit
  in no -- mi -- ne Do -- mi -- ni

  Ho -- san -- na, ho -- san -- na, ho -- san -- na
  in ex -- cel -- sis, cel -- sis.

}

altLyrics = \sopLyrics
tenLyrics = \sopLyrics
basLyrics = \sopLyrics

violinANotes = \relative c' {

  R2.*3
  g'8\pp as bes4 as8 bes 
  c2 bes4 
  f8 g as4 g8 as 
  g f es g f d
  c d es d es f

  % Sanctus…
  \bar "||" \mark \default
  es4\mp g2 
  f2.
  es 
  es8 f g f es d 
  es4 g2 
  f2.
  es 
  es8 f g f g as

  % Pleni…
  \bar "||" \mark \default
  g\p as bes4 as8 bes
  c d es c bes4 
  f8 g as4 g8 as 
  bes as bes g as4
  es8\f f g bes as g 
  f2.\>
  es4\mp\< \tuplet 3/2 { es8 es es } g g

  % Hosanna…
  \mark \default
  \repeat volta 2 {
    c4\fff \tuplet 3/2 { g8 g g } as as 
    bes4 \tuplet 3/2 { bes8 bes bes } as as 
    as4 \tuplet 3/2 { as8 as as } g g
  }
  \alternative {
    { as4 \tuplet 3/2 { as8 as as } bes bes }
    { as4 \tuplet 3/2 { f8 f f } es4\fermata }
  }

  % Benedictus…
  \bar "||" \mark \default
  c8\pp\< b c d es f
  g2.
  g2 g4
  c\f~c8 bes g as 
  bes c bes as bes4\>
  as4. bes8 as4
  g4.\mf as8 g4
  f8 es d es f4\<
  g4 \tuplet 3/2 { g8 g g } b b\!

  % Hosanna…
  \mark \default
  \repeat volta 2 {
    c4\fff \tuplet 3/2 { g8 g g } as as 
    bes4 \tuplet 3/2 { bes8 bes bes } as as 
    as4 \tuplet 3/2 { as8 as as } g g
  }
  \alternative {
    { as4 \tuplet 3/2 { as8 as as } bes bes }
    { as4 \tuplet 3/2 { d8 d d } es4 }
  }
  \bar "|."
}

violinBNotes = \relative c' {
  es8\pp f g bes as g 
  f es d es f bes,
  c d es as g f 
  es f es4 d8 es~
  es2~es8 d~
  d2 es4~
  es8 d es4 d
  c es d 

  % Sanctus…
  \bar "||" \mark \default
  bes\mp es2
  d2. 
  c8 bes c4 bes~
  bes2.
  bes4 es2
  d2. 
  c8 bes c4 bes~
  bes2.

  % Pleni…
  \bar "||" \mark \default
  es8\p f es4 d8 es 
  es2~es8 d~
  d2 es4~
  es8 d es4 f 
  es8\f d es d es4~
  es\> d8 c d4
  es4\mp\< \tuplet 3/2 { es8 es es } es es 

  % Hosanna…
  \mark \default
  \repeat volta 2 {
    es4\fff \tuplet 3/2 { es8 es es } f f 
    f4 \tuplet 3/2 { f8 f f } f f 
    es4 \tuplet 3/2 { es8 es es } es es 
  }
  \alternative {
    { f4 \tuplet 3/2 { f8 f f } g g }
    { es4 \tuplet 3/2 { d8 d d } bes4\fermata  }
  }

  % Benedictus…
  \bar "||" \mark \default
  g8\pp\< b c2
  es8 d es f d4 
  d2 es4
  es2.\f 
  g2 g4~\>
  g f8 es f4~
  f\mf es8 d es4~
  es4 d8 c d4\<
  d \tuplet 3/2 { d8 d d } g g\!

  % Hosanna…
  \mark \default
  \repeat volta 2 {
    es4\fff \tuplet 3/2 { es8 es es } f f 
    f4 \tuplet 3/2 { f8 f f } f f 
    es4 \tuplet 3/2 { es8 es es } es es 
  }
  \alternative {
    { f4 \tuplet 3/2 { f8 f f } g g }
    { es4 \tuplet 3/2 { f8 f f } g4 }
  }
  \bar "|."
}

violaNotes = \relative c' {
  es2\pp c4 
  bes2 g4 
  as2 d4
  bes2. 
  as8 bes c as g4 
  bes2.
  bes4 as bes 
  as2 bes4

  % Sanctus…
  \bar "||" \mark \default
  g\mp bes c 
  d c bes 
  as es f 
  g2.
  g4 bes c 
  d c bes 
  as es f 
  g2.

  % Pleni…
  \bar "||" \mark \default
  bes\p 
  as8 bes c as g4 
  bes2.~
  bes4 c d 
  c2.\f 
  bes2\> as4~
  as\mp\< g8 f e e

  % Hosanna…
  \mark \default
  \repeat volta 2 {
    g4\fff \tuplet 3/2 {c8 c c} d d 
    d4 \tuplet 3/2 {d8 d d} d d 
    c4 \tuplet 3/2 {c8 c c} c c 
  }
  \alternative {
    { d4 \tuplet 3/2 {d8 d d} bes bes }
    { c4 \tuplet 3/2 {bes8 bes bes} g4\fermata }
  }

  % Benedictus…
  \bar "||" \mark \default
  es\pp\< g c 
  bes2. 
  b2 c4 
  as2.\f 
  <<{bes c bes\mf~bes b4 \tuplet 3/2 {b8 b b} g g} \\ {s2 s4\> s2. s2.\! s2 s4\< s2 s8 s8\! }>>

  % Hosanna…
  \mark \default
  \repeat volta 2 {
    g4\fff \tuplet 3/2 {c8 c c} d d 
    d4 \tuplet 3/2 {d8 d d} d d 
    c4 \tuplet 3/2 {c8 c c} c c
  }
  \alternative {
    { d4 \tuplet 3/2 {d8 d d} bes bes }
    { c4 \tuplet 3/2 {bes8 bes bes} bes4 }
  }
  \bar "|."
}

violoncelloNotes = \relative c {
  R2.*7
  as4\p c bes

  % Sanctus…
  \bar "||" \mark \default
  es2\mp c4
  bes2 g4
  as2 d4
  es2.
  es2 c4
  bes2 g4
  as2 d4
  es2.

  % Pleni…
  \bar "||" \mark \default
  es4\p g, bes
  as c es 
  bes2 g4
  bes2.
  c4.\f bes8 as4 
  bes2 d4
  es2 r4

  % Hosanna…
  \mark \default
  \repeat volta 2 {
    c\fff r r
    bes r r 
    as r r 
  }
  \alternative {
    { bes r es }
    { as, \tuplet 3/2 {bes8 bes bes} es4\fermata }
  }

  % Benedictus…
  \bar "||" \mark \default
  c4.\pp\< bes8 c d
  es2 f4 
  g2 es4
  c2\f d4 
  es2 d4\>
  as'2 c,8 d 
  es2\mf g,8 as 
  bes2 as4\<
  g \tuplet 3/2 {g'8 g g} f f\!

  % Hosanna…
  \mark \default
  \repeat volta 2 {
    c4\fff r r
    bes r r 
    as r r 
  }
  \alternative {
    { bes r es }
    { as, \tuplet 3/2 {bes8 bes bes} es,4 }
  }
  \bar "|."
}

organRHNotes = \relative c' {
  <<{es8_\markup{\box "II man."}^\markup{\column {" " "I man.: Pryncypał 8', Flet 8', Oktawa 4', Flet 2'" "II man.: Salicet 8', Flet 8', Flet 4'" "Ped.: Subbas 16', Oktawa 8'" }} f g bes as g} \\ {es2 c4}>>
  f8 es d es f bes,
  c d es as g f 
  g_\markup{\box "I man."} as bes4 as8 bes 
  c2 bes4
  f8 g as4 g8 as
  g f es g f d 
  c d es d es f 

  % Sanctus…
  es4 <<es2 g>>
  <<f2. d>>
  <<{es2. es8 f g f es d}
  \\{c8 bes c4 bes~bes2.}>>

  es4 <<es2 g>>
  <<f2. d>>
  <<{es2. es8 f g f g as}
  \\{c,8 bes c4 bes~bes2.}>>
}

organLHNotes = \relative c' {

  s2.
  bes2_\markup{\box "II man."} g4
  as2  d4
  es8 f es4 d8 es~ 
  es2~es8 d~
  d2 es4~
  es8 d es4 d
  <<c2 as>> <<bes4 d>>

  % Sanctus…
  g,4_\markup{\box "I man."} bes c
  d c bes
  as es f
  as2.

  g4 bes c
  d c bes
  as es f
  as2.

}

organPedNotes = \relative c {
  
  r2. r2. r2. r2. r2. r2. r2.
  as4 c bes

  % Sanctus…
  \bar "||" \mark \default
  es2 c4
  bes2 g4
  as2 d4
  es2.
  es2 c4
  bes2 g4
  as2 d4
  es2.

  % Pleni…
  \bar "||" \mark \default
  es4 g, bes
  as c es 
  bes2 g4
  bes2.
  c4. bes8 as4 
  bes2 d4
  es2 r4

  % Hosanna…
  \mark \default
  \repeat volta 2 {
    r2. r2. r2.
  }
  \alternative {
    { r2. }
    { r2. }
  }

  % Benedictus…
  \bar "||" \mark \default
  r2. r2. 
  r2. r2. r2. r2. r2. 
  r2. r2. 

  % Hosanna…
  \mark \default
  \repeat volta 2 {
    r2. r2. r2.
  }
  \alternative {
    { r2. }
    { r2. }
  }
  \bar "|."
}

\header {
  title = "Sanctus"
  subtitle = "Missa Faustinum"
  composer = "Paweł Szajna"
}