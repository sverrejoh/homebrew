require 'formula'

class Scala <Formula
  @homepage='http://www.scala-lang.org/'
  @url='http://www.scala-lang.org/downloads/distrib/files/scala-2.7.7.final.tgz'
  @version='2.7.7'
  @md5='5d2294d5aab72fec869c0ba666d28b7e'

  def install
    prefix.install Dir['*']
    FileUtils.rm_f Dir["#{bin}/*.bat"]
    FileUtils.mv prefix+'man', share
  end
end
