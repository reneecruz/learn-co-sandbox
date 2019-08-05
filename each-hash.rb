bands = {
  joy_division: %w[ian bernard peter stephen],
  the_smiths: %w[johnny andy morrissey mike],
  the_cramps: %w[lux ivy nick],
  blondie: %w[debbie chris clem jimmy nigel],
  talking_heads: %w[david tina chris jerry]
}

bands.each{ |pair| p pair }

# A more expressive synonym is each_pair, which does the same thing:
bands.each_pair{ |pair | p pair }