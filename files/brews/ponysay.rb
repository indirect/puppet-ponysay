require 'formula'

class Ponysay < Formula
  homepage 'https://github.com/erkin/ponysay'
  url 'http://files.arko.net/1n0o0g2T122I/ponysay-master.zip'
  sha1 '37ba83189bb3a577bff7f0ad435b78f58e8ebc25'
  version 'e7c03f'

  depends_on 'python3'

  def install
    system "python3 setup.py install --prefix=#{prefix} --sysconfdir=#{etc} --freedom=partial --without-shared-cache --without-info"
  end

  def test
    system "ponysay --version"
  end
end
