sopNotes = \relative c' {

	c8\pp[ d es] es f4 es     % Kyrie eleison
  es8\p\<[ f g] g as4 g\mf  % Kyrie eleison

  \bar "||"

  g8\f[( as) bes] bes c4 bes       % Christe eleison
  es8\ff[( d) bes\>] bes bes4\mf f % Christe eleison

  \bar "||"

  es8\p[ f g] bes as[( g)] f4          % Kyrie eleison
  es8\pp[ d c] as' g[( f)] es4\fermata % Kyrie eleison

  \bar "|."

}

altNotes = \relative c' {
	
  c8\pp[ bes c] c bes4 bes
  bes8\p\<[ d es] es f4 d\mf

  es8\f[( f) g] g as4 g 
  g4\ff \autoBeamOff g8\> g \autoBeamOn f\mf[( es)] d4

  c8\p[ d es] d es4 d
  c8\pp[ d c] c bes4 bes\fermata

}

tenNotes = \relative c' {

  g8\pp[ g as] as f4 g
  g8\p\<[ bes c] c d4 b\mf

  c8\f[( d) es] es es4 es
  es4\ff \autoBeamOff es8\> es \autoBeamOn d\mf[( c)] bes4

  g8\p[ g g] bes c[( bes)] bes4
  g8\pp[ g as] as bes[ (as)] g4\fermata

}

basNotes = \relative c {

  c8\pp[ bes as] as d4 es
  es8\p\<[ d es] es bes4 b\mf

  c8\f[( bes) es] es as,[( c)] es4
  c4\ff \autoBeamOff es8\> es \autoBeamOn bes4\mf bes

  c8\p[ c c] bes as4 bes
  c8\pp[ bes as] as bes4 es\fermata

}

sopLyrics = \lyricmode {
	Ky -- ri -- e e -- lei -- son
  Ky -- ri -- e e -- lei -- son
  Chri -- ste e -- lei -- son
  Chri -- ste e -- lei -- son
  Ky -- ri -- e e -- lei -- son
  Ky -- ri -- e e -- lei -- son
}

altLyrics = \sopLyrics
tenLyrics = \sopLyrics
basLyrics = \sopLyrics

violinANotes = \relative c' {

  r1 \bar "||"

  es2\p f8 g es d
  es\< f g4 as8 f g f \bar "||"

  g4\mf bes c16\< d es c bes8 bes16 bes
  c8\ff c16 c bes8 bes16 bes bes8\> g f d  \bar "||"

  es\mp f g bes c\> bes c d
  es\p d c as g f es4\fermata \bar "|."

}

violinBNotes = \relative c' {

  es8\pp d c bes as4 g \bar "||"

  c8\p bes c4 bes2
  bes8\< d es4 f d \bar "||"

  es8\mf f g4 as\< g8 g16 g
  g8\ff g16 g g8 g16 g f8\> es d4 \bar "||"

  c8\mp d es d as'4\> g
  c,8\p d c4 bes2\fermata \bar "|."

}

violaNotes = \relative c' {

  g4\pp as f es \bar "||"

  g\p as f g 
  g8\< bes c4 d b  \bar "||"

  c8\mf d es4~es\< es8 es16 es
  es8\ff es16 es es8 es16 es d8\> c bes4 \bar "||"

  g4.\mp bes8 es8\> d~d4
  g,\p as bes8 as g4\fermata \bar "|."

}

violoncelloNotes = \relative c {

  r2 bes4\pp es8 d \bar "||"

  c\p bes as4 bes8 d es4 
  es8\< d es c bes4 b \bar "||"

  c8\mf bes es4 as,8\< c es8 es16 es 
  c8\ff d16 d es8 g,16 g bes2\> \bar "||"

  c4.\mp bes8 as4\> bes
  c8\p bes as4 bes8 d es4\fermata  \bar "|."

}

organRHNotes = \relative c' {

  r1

  <<{es2 f8 g} \\ {c, <<bes d>> c4 <<d f>>}>> es
  es8 <<d f>> <<g4 es>> <<as f>> <<{g} \\ {g8 f}>>

  <<{g4 bes c16 d es c} \\ {es,8 <<d f>> <<es4 g>> <<es as>>}>> <<es8 g bes>> <<bes16 g es>> <<es g bes>>
  <<c8 g es>> <<c'16 g es>> <<c' g es>> <<bes'8 g es>> <<bes'16 g es>> <<bes' g es>> <<{bes'4} \\ {<<f8 d>> <<es c>>}>> <<f4 d>>

  <<{es8 <<d f>> <<es g>>} \\ {c,4.}>> <<bes'8 f d>> <<{<<c' as>> <<bes g>>} \\ {es4}>> <<d f bes>>
  <<c,8 es>> d c <<c es as>> <<{<<g bes,>> <<as f'>>} \\ {d4}>> <<es bes g\fermata>>

}

organLHNotes = \relative c' {
  
  <<{es8 d c bes <<as4 f>> g} \\ {g as bes, es8 d}>>

  g4 as f g
  <<{bes4} \\ {g8 f}>> <<g4 c>> <<{d2} \\ {bes4 <<b g>>}>>

  g4 <<bes g>> <<as c>> <<bes8 g es>> <<es16 g bes>> <<bes g es>>
  <<c'8 g es>> <<c'16 g es>> <<c' g es>> <<bes'8 g es>> <<bes'16 g es>> <<bes' g es>> <<{bes'2} \\ {<<f8 d>> <<g es>> <<f4 d>>}>>

  <<g4. es>> <<bes'8 f d>> <<{<<c'8 as>> <<bes g>>} \\ {es4}>> <<bes' f d>>
  <<{g4} \\ {es8 <<f d>>}>> <<c4 es as>> <<f d>> <<g es bes\fermata>>

}

organPedNotes = \relative c {
  
  r1 \bar "||"

  c8 bes as4  bes8 d es4 
  es8 d es c bes4 b \bar "||"

  c8 bes es4 as,8 c es4 
  c8 d es g, bes2 \bar "||"

  c4. bes8 as4 bes 
  c8 bes as4 bes8 d, es4\fermata \bar "|."

}

\header {
  title = "Kyrie"
  subtitle = "Missa Faustinum"
  composer = "Paweł Szajna"
}