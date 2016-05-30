require 'package'

class Node_stable < Package
  version '6.2.0'
  source_url 'https://nodejs.org/dist/v6.2.0/node-v6.2.0.tar.gz'
  source_sha1 '228a0c2ff23294778f226e5d7fc85fc2e80a3cd1'

  depends_on 'buildessential'
  depends_on 'python27'

  def self.build
    system "CC='gcc' python2.7 ./configure"
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
