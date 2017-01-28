require 'formula'

class Ponysay < Formula
  homepage 'https://github.com/erkin/ponysay'
  url 'http://files.arko.net/0j2E1C2O2j0h/ponysay-master.zip'
  sha256 'e074d9474d58e57a8599670f7554cf1a85ea8c2a065d87d050ff21e17ffcb7ab'
  version 'a724d423bcdbe979d1b7f097c518a0626af44db6'

  depends_on 'python3'

  def install
    system "python3 setup.py install --prefix=#{prefix} --sysconfdir=#{etc} --freedom=partial --without-shared-cache --without-info"
  end

  def test
    system "ponysay --version"
  end
end
