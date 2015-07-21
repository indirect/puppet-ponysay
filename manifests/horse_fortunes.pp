class ponysay::horse_fortunes {
  require ponysay
  require ponysay::fortune

  $fortunes = "${homebrew::config::installdir}/share/games/fortunes"

  exec { 'horse_ebooks':
    cwd     => $fortunes,
    command => "curl -o horse_ebooks -L http://files.arko.net/1u3d360l1Y2O/horse_ebooks",
    unless  => "test -e $fortunes/horse_ebooks"
  }

  exec { 'horse_ebooks.dat':
    refreshonly => true,
    cwd         => $fortunes,
    command     => "strfile horse_ebooks",
    subscribe   => Exec['horse_ebooks']
  }
}
