require 'formula'

class Ponysay < Formula
  homepage 'https://github.com/erkin/ponysay'
  url 'http://files.arko.net/1n0o0g2T122I/ponysay-master.zip'
  sha256 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  version 'e7c03f'

  depends_on 'python3'

  def install
    system "python3 setup.py install --prefix=#{prefix} --sysconfdir=#{etc} --freedom=partial --without-shared-cache --without-info"
  end

  def test
    system "ponysay --version"
  end
end
