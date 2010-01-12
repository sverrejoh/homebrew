require 'formula'

class Gource <Formula
  url 'http://gource.googlecode.com/files/gource-0.23.tar.gz'
  homepage ''
  md5 ''

  depends_on 'sdl'
  depends_on 'ftgl'
  depends_on 'libpng'
  depends_on 'sdl_image'
  depends_on 'pcre'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
#   system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
