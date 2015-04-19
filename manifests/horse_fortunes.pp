class ponysay::horse_fortunes {
  require ponysay
  require ponysay::fortune

  $fortunes = "${homebrew::config::installdir}/share/games/fortunes"

  exec { 'horse_ebooks':
    cwd     => $fortunes,
    command => "curl -o horse_ebooks http://horsefortun.es/fortune",
    unless  => "test -e $fortunes/horse_ebooks"
  }

  exec { 'horse_ebooks.dat':
    refreshonly => true,
    cwd         => $fortunes,
    command     => "strfile horse_ebooks",
    subscribe   => Exec['horse_ebooks']
  }
}
