require 'formula'

class Radare2 < Formula
  homepage 'http://radare.org'
  url 'http://radare.org/get/radare2-0.9.4.tar.gz'
  sha1 '32ad9dd9cda1c772b7eb7fa747bfe36c25d8192b'

  head 'https://github.com/radare/radare2.git', :using => :git

  depends_on 'libewf'
  depends_on 'libmagic'
  depends_on 'gmp'
  depends_on 'lua'

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
