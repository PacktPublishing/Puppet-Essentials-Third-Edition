$array = [ '1', '2', '3', '4']
$array.slice(2) |$slice| {
  notify { "Slice: ${slice}": }
}

