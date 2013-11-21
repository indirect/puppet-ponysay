class ponysay {
  require homebrew
  homebrew::formula { 'ponysay': }
  package { 'boxen/brews/ponysay': }
}
