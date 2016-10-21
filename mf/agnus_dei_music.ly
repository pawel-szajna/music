sopNotes = \relative c' {

  \repeat volta 3 {
    es4\mf\< es f2\> g2.\mp                                % Agnus Dei 
    g8\<( as) bes4\f\< as8 bes c\>( bes) as( g)            % qui tollis peccata
  }
  \alternative { 
    { f2\p g es8\pp\<( f g) bes as\mf( g) f4 es8\p( d c as') g2\pp }  % mundi miserere nobis
    { f2\mf\< g es'8\ff( d) bes4 c as g2\f\>( f) es1\mf\fermata }   % mundi dona nobis pacem
  } \bar "|."
}

altNotes = \relative c' {
	
  bes4\mf\< c d2\> es2.\mp 
  es8\<( f) g4\f\< as8 g as\>( es) f( es) 

  d2\p d c8\pp\<( d es) d es4\mf d c8\p( d c4) es2\pp
  d2\mf\< d g8\ff( f) es4 es f~f\f\> es2( d4) es1\mf\fermata


}

tenNotes = \relative c' {

  g4\mf\< g bes\>( c) bes2.\mp
  bes4\< bes\f\< bes8 bes as\>( g) as4 

  bes2\p b g4.\pp\< bes8 c\mf( bes) bes4 c8\p( bes c4) bes2\pp
  bes2\mf\< b c4\ff c as as bes1\f\> bes\mf\fermata

}

basNotes = \relative c {

  es4\mf\< c bes2\> es2.\mp 
  g4\< g\f\< f8 es es4\> as,

  bes4\p( as) g2 c4.\pp\< bes8 as4\mf bes c4\p( as) es'2\pp
  bes4\mf\<( as) g2 c4\ff c' as d, es2\f\>( bes) <<es1\mf\fermata \parenthesize es,>>

}

sopLyrics = \lyricmode {
	A -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta
  mun -- di, mi -- se -- re -- re no -- bis,
  mun -- di, do -- na no -- bis pa -- cem.
}

altLyrics = \sopLyrics
tenLyrics = \sopLyrics
basLyrics = \sopLyrics


violinANotes = \relative c' {

  r1 r1 r1 r2 r4 c8\p d 

  \repeat volta 3 {
    es2 f
    g8 as bes as g f g as
    bes2 c8 bes as g
  }
  \alternative {
    {
      f2 g4. f8 
      es f g bes as g f4 
      es8 d c as' g4 c,8 d
    }
    { 
      f2\mf g8\< g16 g b8 b16 b
      c4\ff bes8 bes16 bes c4 d8 d16 d
      es4\> f8 g f2 
      es1\mf\fermata \bar "|."
    }
  }

}

violinBNotes = \relative c' {

  es4\pp es f2
  g2. g8 as 
  bes4 as8 bes c bes as g 
  f es d bes c2 

  \repeat volta 3 {
    bes4\p c d2
    es2. es8 f 
    g2 as8 es f es
  }
  \alternative {
    {
      d2 d 
      c8 d es d es4 d 
      c8 d c4 es r
    }
    {
      d2\mf d8\< d16 d d8 d16 d 
      es4\ff g8 g16 g es4 f8 f16 f 
      f4\> g bes2~
      bes8\mf as16 g f8 g16 f es2\fermata \bar "|."
    }
  }

}

violaNotes = \relative c' {

  g2\pp bes4 c 
  bes2. bes4 
  bes bes8 bes as g f es 
  d2 es 

  \repeat volta 3 {
    g2\p bes4 c
    bes8 c g as bes2 
    bes as8 g as4 
  }
  \alternative {
    { 
      bes2 b 
      g4. bes8 c bes bes4 
      c8 bes c4 bes r 
    }
    {
      bes2\mf b8\< b16 b g8 g16 g 
      g4\ff es'8 es16 es es4 d8 d16 d 
      es2\> d 
      es8\mf f16 es d8 bes16 as g2\fermata \bar "|."
    }
  }

}

violoncelloNotes = \relative c {

  es4\pp c bes2
  es2. g4 
  g f8 es es4 as,
  bes2 as 

  \repeat volta 3 {
    es'4\p c bes2 
    es1 
    g2 es4 as, 
  }
  \alternative {
    {
      bes as g2 
      c4. bes8 as4 bes 
      c as es' r
    }
    {
      bes4\mf as g8\< g16 g f8 f16 f 
      c'4\ff c'8 c16 c as4 as8 as16 as 
      es2\> bes4 g8 f 
      es1\mf\fermata \bar "|."
    }
  }

}

organRHNotes = \relative c' {

  r1 r r r r r r 
  r1 r r r r r r 


}

organLHNotes = \relative c' {
  
  r1 r r r r r r 
  r1 r r r r r r 
}

organPedNotes = \relative c {
  
  r1 r1 r1 r1

  \repeat volta 3 {
    r r r
  }
  \alternative {
    {
      r r r
    }
    {
      r r r r
    }
  }

}

\header {
  title = "Agnus Dei"
  subtitle = "Missa Faustinum"
  composer = "Paweł Szajna"
}