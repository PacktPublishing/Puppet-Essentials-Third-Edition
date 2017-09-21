virtual_host {
  'example.net':
    content => 'foo';
  'fallback':
    priority => '999',
    content  => ...,
}
