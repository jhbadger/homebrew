class Miniupnpc < Formula
  desc "UPnP IGD client library and daemon"
  homepage "http://miniupnp.tuxfamily.org"
  url "http://miniupnp.tuxfamily.org/files/download.php?file=miniupnpc-1.9.20151008.tar.gz"
  sha256 "e444ac3b587ce82709c4d0cfca1fe71f44f9fc433e9f946b12b9e1bfe667a633"

  bottle do
    cellar :any
    sha256 "aecb5c84e988af64b0d3d4c3f090d033a6daaad5fe145cbec599537bcba65646" => :el_capitan
    sha256 "b31e62a6331c82219bdf674c9d5b366f1288f203b947f446bbade154ab54025d" => :yosemite
    sha256 "ffc0d9665983408ee86c4e5aae53c66abb22f56d700c8ceea6bd01f2a3875c75" => :mavericks
    sha256 "ba1333c0e47f68fb0b11e945ada0aff81b69517aea4356f936fed0eaf357475e" => :mountain_lion
  end

  def install
    system "make", "INSTALLPREFIX=#{prefix}", "install"
  end
end
