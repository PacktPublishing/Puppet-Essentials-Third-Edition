$max_threads = hiera('max_threads')
if $max_threads !~ Integer {
  fail "The max_threads value must be an integer number"
}

